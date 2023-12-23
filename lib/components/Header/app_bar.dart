import 'package:flutter/material.dart';

import '../../pages/App/Home/Take_Away.dart';
import '../../pages/themes/app_color.dart';

class app_bar extends StatefulWidget {
  const app_bar({super.key});

  @override
  State<app_bar> createState() => _app_barState();
}

class _app_barState extends State<app_bar> {
  @override
  Widget build(BuildContext context) {
    return
      Stack(children: [
        Container(
          width: 390,
          height: 60,
          // color: AppColor.primaryColor,
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 0),
              child: Image.asset('images/icon_map.png'),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 4),
              child: const Text(
                '1 Pat Tat St, San Po Kong',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20,
              ),
              width: 20,
              height: 20,
              child: Image.asset(
                'images/drag.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16, left: 80),
              child: Image.asset('images/quet_ma.png'),
            ),
            Container(
              margin: EdgeInsets.only(top: 16, left: 15),
              child: Image.asset(
                'images/searchs.png',
              ),
            )
          ],
        ),
      ]);

  }
}
