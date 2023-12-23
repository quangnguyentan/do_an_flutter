import 'package:flutter/material.dart';
class item_2 extends StatefulWidget {
  const item_2({super.key});

  @override
  State<item_2> createState() => _item_2State();
}

class _item_2State extends State<item_2> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.only(top: 16, left: 16),
        width: 44,
        height: 22,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: Color(0xFFEE5382)
        ),
      ),
      Center(
        child: Container(
          margin: EdgeInsets.only(top: 30,left: 25),
          child: const Text(
            'Promo',

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
