import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/Views/HomePage.dart';

void main() {
  runApp(
    const NewsApp()
  );
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 248, 248, 248), // Set the background color to white
        appBarTheme: const AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 248, 248, 248), // Set the AppBar background color to white
          elevation: 0, // Remove the shadow
          
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
    );
  }
}
