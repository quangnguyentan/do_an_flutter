import 'package:flutter/material.dart';

class card_12 extends StatefulWidget {
  const card_12({super.key});

  @override
  State<card_12> createState() => _card_12State();
}

class _card_12State extends State<card_12> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.only(left: 16,),
        width: 98,
        height: 64,
        child: ClipRRect(
          child: Image.network(
            'https://cdn.xaluannews.com/images/news/Image/2022/06/09/862a1e2471d68d.img.jpg',
            fit: BoxFit.cover,
            alignment: Alignment.topLeft,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      Stack(
        children: [
          Container(
          margin: EdgeInsets.only(left: 16),
          width: 98,
          height: 64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.black.withOpacity(0.30000001192092896),
          ),

        ),
          Container(
              margin: EdgeInsets.only(top: 35, left: 50),
              child: const Text(
                'Sushi',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w700,
                  height: 0.08,
                ),
              ))
    ]
      )
    ]);
  }
}
