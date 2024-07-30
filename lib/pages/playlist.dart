import 'package:flutter/material.dart';
import 'package:music_player/constants/routes.dart';

class Playlist extends StatefulWidget {
  const Playlist({super.key});

  @override
  State<Playlist> createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            children: [Text('playlist')],
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (routeIndex) => {
          if (routeIndex != 1)
            {Navigator.of(context).pushReplacementNamed(Routes[routeIndex]!)}
        },
        backgroundColor: Colors.blueGrey.shade900,
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Icon(Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Icon(Icons.album),
              ),
              label: 'Musics'),
        ],
        currentIndex: 1,
      ),
    );
  }
}
