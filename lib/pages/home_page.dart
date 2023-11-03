import 'package:flutter/material.dart';
import 'package:list_of_books_06112023/components/book_item.dart';
import 'package:list_of_books_06112023/components/list_of_books.dart';

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
          return BookItem(index: index,);
        },
      ),
    );
  }
}




// String? showYear (int index){
//   (listOfBooks[index].year==null)? 'Unknown': '${listOfBooks[index].year.toString()}';
// }
// я хотела, чтоб при передаче параметра year BookPage, выполнилась проверка на null.