import 'package:flutter/material.dart';

class item_1 extends StatefulWidget {
  const item_1({super.key});

  @override
  State<item_1> createState() => _item_1State();
}

class _item_1State extends State<item_1> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.only(top: 16, left: 16),
        width: 111,
        height: 22,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xFFA88AEC)
        ),
      ),
      Center(
        child: Container(
          margin: EdgeInsets.only(top: 30,left: 25),
          child: const Text(
            'Recommendations',

            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w700,
              height: 0.10,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      )
    ]);
  }
}
