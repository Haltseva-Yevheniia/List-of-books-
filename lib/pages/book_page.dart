import 'package:flutter/material.dart';
import 'package:list_of_books_06112023/components/book_details.dart';

class BookPage extends StatelessWidget {
  String name;
  String author;
  String? year;
  String about;
  String image;
  double rate;

  BookPage({
    super.key,
    required this.name,
    required this.author,
    this.year,
    this.about = '',
    this.image = '',
    this.rate = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.book_online)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: BookDetails(name: name, author: author, year: year, image: image, rate: rate, about: about),
        ),
      ),
    );
  }
}


