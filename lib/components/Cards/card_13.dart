import 'package:flutter/material.dart';

class card_13 extends StatefulWidget {
  const card_13({super.key});

  @override
  State<card_13> createState() => _card_13State();
}

class _card_13State extends State<card_13> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.only(
          left: 10,
        ),
        width: 98,
        height: 64,
        child: ClipRRect(
          child: Image.network(
            'https://icdn.dantri.com.vn/thumb_w/770/2022/01/25/canh-diem-4-1643095195620.jpeg',
            fit: BoxFit.cover,
            alignment: Alignment.topLeft,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      Stack(children: [
        Container(
          margin: EdgeInsets.only(left: 10),
          width: 98,
          height: 64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.black.withOpacity(0.30000001192092896),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 35, left: 36),
            child: Text(
          'Healthy',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w700,
            height: 0.08,
          ),
        ))
      ])
    ]);
  }
}
