import 'package:flutter/material.dart';
import 'package:list_of_books_06112023/components/about_book.dart';
import 'package:list_of_books_06112023/components/book_info_row.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({
    super.key,
    required this.name,
    required this.author,
    required this.year,
    required this.image,
    required this.rate,
    required this.about,
  });

  final String name;
  final String author;
  final String? year;
  final String image;
  final double rate;
  final String about;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookInfoRow(name: name, author: author, year: year, image: image, rate: rate),
        SizedBox(height: 50,),
        AboutBook(name: name, about: about),

      ],
    );
  }
}

