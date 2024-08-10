import 'package:flutter/material.dart';
import 'package:football_app/Theme/dark_mode.dart';

import 'Theme/light_mode.dart';
import 'page/fotball_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Football Live Matches",
      theme: lightMode,
      darkTheme: darkMode,
      home: const FotballPage(),
    );
  }
}
