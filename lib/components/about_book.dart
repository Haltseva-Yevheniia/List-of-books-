import 'package:flutter/material.dart';

class AboutBook extends StatelessWidget {
  const AboutBook({
    super.key,
    required this.name,
    required this.about,
  });

  final String name;
  final String about;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('About $name', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
        ),
        Text(about, textAlign: TextAlign.justify,),
      ],
    );
  }
}
