import 'package:flutter/material.dart';

class item_4 extends StatefulWidget {
  const item_4({super.key});

  @override
  State<item_4> createState() => _item_4State();
}

class _item_4State extends State<item_4> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Opacity(
        opacity: 0.10,
        child: Container(
          margin:
          EdgeInsets.only(top: 12, right: 84),
          width: 68,
          height: 24,
          decoration: ShapeDecoration(
            color: Color(0xFFA88AEC),
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(4)),
          ),
        ),
      ),
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: 23, left: 10),
            child: const Text(
              'Book',
              style: TextStyle(
                color: Color(0xFFA88AEC),
                fontSize: 14,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w600,
                height: 0.08,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 16, left: 5),
            child: Image.asset(
                'images/icon_book_14x14.png'),
          )
        ],
      )
    ]);
  }
}
