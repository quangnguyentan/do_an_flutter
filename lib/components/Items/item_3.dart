import 'package:flutter/material.dart';
class item_3 extends StatefulWidget {
  const item_3({super.key});

  @override
  State<item_3> createState() => _item_3State();
}

class _item_3State extends State<item_3> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.only(top: 16, left: 16),
        width: 88,
        height: 22,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: Color(0xFF4C95FF)
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
