import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_of_books_06112023/home_page.dart';

void main() {
  runApp(BooksApp());
}

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
