import 'package:flutter/material.dart';
import 'package:list_of_books_06112023/book_page.dart';
import 'package:list_of_books_06112023/books.dart';
import 'package:list_of_books_06112023/books_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Books'),
        centerTitle: true,
        leading: Icon(Icons.book_online),
      ),
      body: ListView.builder(
        itemCount: listOfBooks.length,
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookPage(
                      name: listOfBooks[index].name,
                      author: listOfBooks[index].author,
                  year: listOfBooks[index].year,
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
                        width: 50,
                        height: 50,
                        child: Image.network(
                            listOfBooks[index].image)),
                    // TODO function toShowImage
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

List<Books> listOfBooks = [
  first,
  second,
  third,
  forth,
];

// Image showImage (String image){
//   (image == null)? return Image.network('https://www.actbus.net/fleetwiki/images/8/84/Noimage.jpg')
//
// }
