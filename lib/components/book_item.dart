import 'package:flutter/material.dart';
import 'package:list_of_books_06112023/components/list_of_books.dart';
import 'package:list_of_books_06112023/pages/book_page.dart';

class BookItem extends StatelessWidget {
  int index;
  BookItem({
    super.key,
    required this.index,
  });



  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookPage(
              name: listOfBooks[index].name,
              author: listOfBooks[index].author,
              year:listOfBooks[index].year,
              //showYear(index),
              about: listOfBooks[index].about,
              rate: listOfBooks[index].rate,
              image: listOfBooks[index].image,),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(listOfBooks[index].name),
                Text(listOfBooks[index].author)
              ],
            ),
            SizedBox(
              width: 50,
            ),
            Container(
              color: Colors.white54,
              child: Container(
                  width: 100,
                  height: 100,
                  child: Image.network(
                    listOfBooks[index].image, fit: BoxFit.cover,)),
              // TODO function toShowImage
            ),
          ],
        ),
      ),
    );
  }
}