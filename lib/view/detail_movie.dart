import 'package:counter_7/drawer.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/model/watchlist.dart';
import 'package:counter_7/view/watchlist_view.dart';

class DetailMovie extends StatelessWidget {
  final int index;
  final Watchlist movie;

  const DetailMovie({super.key, required this.index, required this.movie});

  String checkStatus(Watched status) {
    if (status == Watched.NO) {
      return "Belum";
    } else {
      return "Sudah";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      drawer: const myDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),
          Center(
            child: Text(movie.fields.title,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10, left: 10),
            child: Row(
              children: [
                const Text("Release Date: ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(movie.fields.releaseDate,
                    style: const TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10, left: 10),
            child: Row(
              children: [
                const Text("Rating: ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(movie.fields.rating.toString(),
                    style: const TextStyle(fontSize: 20)),
                const Text("/10", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: Row(
              children: [
                const Text("Status: ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(checkStatus(movie.fields.watched),
                    style: const TextStyle(fontSize: 20)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: Text("Review:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child:
                Text(movie.fields.review, style: const TextStyle(fontSize: 20)),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 50,
        margin: const EdgeInsets.all(14),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Center(
            child: Text('Back'),
          ),
        ),
      ),
    );
  }
}