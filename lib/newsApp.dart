import 'package:flutter/material.dart';
import 'package:newsapp/newsHome.dart';

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return MaterialApp(
      title: 'Новостной экран',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromARGB(255, 54, 214, 214),
        scaffoldBackgroundColor: const Color.fromARGB(255, 247, 255, 7),
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 14),
        ),
      ),
      home: NewsHome(),
    );
  }
}
