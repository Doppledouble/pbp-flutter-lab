import 'package:flutter/material.dart';
import 'package:counter_7/view/form.dart';
import 'package:counter_7/view/data.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/view/watchlist_view.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: Text('List Menu'),
            
          ),
          // Menambahkan clickable menu
          ListTile(
            title: const Text('counter_7'),
            leading: Icon(Icons.exit_to_app_outlined),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),
          ListTile(
            title: const Text('Form Budget'),
            leading: Icon(Icons.folder),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyFormPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Data Budget'),
            leading: Icon(Icons.data_object),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyDataPage()),
              );
            },
          ),
          ListTile(
            title: const Text('My Watchlist'),
            leading: Icon(Icons.list),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyWatchlistView()),
              );
            },
          ),
        ],
      ),
    );
  }
}


