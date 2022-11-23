import 'package:flutter/material.dart';
import 'package:counter_7/model/watchlist.dart';
import 'package:counter_7/drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:counter_7/view/detail_movie.dart';
import 'package:counter_7/data/data_watchlist.dart';

class MyWatchlistView extends StatefulWidget {
  const MyWatchlistView({super.key});

  @override
  State<MyWatchlistView> createState() => _MyWatchlistViewState();
}

class _MyWatchlistViewState extends State<MyWatchlistView> {
  late DataWatchlist dataMovie;
  late Future<List<Watchlist>> _watchlist;

  Color colorWatched(Watched status) {
    if (status == Watched.NO) {
      return Colors.red;
    } else {
      return Colors.blue;
    }
  }

  bool checkStatusWatched(Watched status) {
    if (status == Watched.NO) {
      return false;
    } else {
      return true;
    }
  }

  @override
  void initState() {
    dataMovie = DataWatchlist();
    _watchlist = dataMovie.fetchWatchlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
        ),
        drawer: const myDrawer(),
        body: FutureBuilder(
            future: _watchlist,
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada Watchlist...",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      Watchlist movie = snapshot.data[index];
                      return Card(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: colorWatched(movie.fields.watched)),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, bottom: 25, left: 10, right: 10),
                            child: ListTile(
                                title: Text(movie.fields.title,
                                    style: GoogleFonts.lato()),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailMovie(
                                                index: index,
                                                movie: snapshot.data[index],
                                              )));
                                },
                                trailing: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Row(children: [
                                      Expanded(
                                          child: CheckboxListTile(
                                        value: checkStatusWatched(
                                            movie.fields.watched),
                                        onChanged: (newValue) {
                                          setState(() {
                                            if (movie.fields.watched ==
                                                Watched.YES) {
                                              movie.fields.watched =
                                                  Watched.NO;
                                              colorWatched(Watched.NO);
                                            } else {
                                              movie.fields.watched =
                                                  Watched.YES;
                                              colorWatched(Watched.YES);
                                            }
                                          });
                                        },
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                      )),
                                    ]))),
                          ));
                    },
                    itemCount: snapshot.data.length,
                  );
                }
              }
            }));
  }
}