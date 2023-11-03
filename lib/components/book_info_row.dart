import 'package:flutter/material.dart';

class BookInfoRow extends StatelessWidget {
  const BookInfoRow({
    super.key,
    required this.name,
    required this.author,
    required this.year,
    required this.image,
    required this.rate,
  });

  final String name;
  final String author;
  final String? year;
  final String image;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
