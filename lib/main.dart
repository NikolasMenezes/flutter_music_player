import 'package:flutter/material.dart';
import 'package:music_player/pages/home.dart';
import 'package:music_player/pages/playlist.dart';
import 'package:music_player/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (_) => const MyHomePage(),
        "/playlist": (_) => const Playlist()
      },
      theme: AppTheme.darkTheme(),
      initialRoute: '/home',
    );
  }
}
