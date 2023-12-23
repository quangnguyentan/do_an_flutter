import 'package:flutter/material.dart';
import 'package:untitled2/components/Cards/card_11.dart';
import 'package:untitled2/components/Header/app_bar.dart';

class Book extends StatefulWidget {
  const Book({super.key});

  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:  [
          Column(
            children: [
              card_11(),
              card_11(),
              card_11(),
              card_11(),
              card_11(),
              card_11(),
              card_11(),

            ],
          ),

        ],
      ),
    );
  }
}
