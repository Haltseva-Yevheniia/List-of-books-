import 'package:flutter/material.dart';
import 'package:list_of_books_06112023/home_page.dart';

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
          child: Column(
            children: [
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(name, style: TextStyle(color: Colors.white),),
                      Text(author),
                      Text('$year'),
                    ],
                  ),
                  SizedBox(width: 100, height: 100, child: Image.network(image),),
                //SizedBox(width: 40,),
                  Text(rate.toString()),
                ],
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('About $name', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
              ),
              Text(about, textAlign: TextAlign.justify,)
            ],
          ),
        ),
      ),
    );
  }
}
