import 'package:flutter/material.dart';
import 'package:untitled2/pages/App/Search/index.dart';

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
    return SafeArea(
        child: AppBar(
      title: Container(
        margin: EdgeInsets.only(top: 0),
        child: Stack(alignment: Alignment.topCenter, children: [
          // Container(
          //   width: 390,
          //   height: 60,
          //   // color: AppColor.primaryColor,
          // ),
          Row(
            children: [
              Container(
                child: Image.asset('images/icon_map.png'),
              ),
              Container(
                margin: EdgeInsets.only(left: 4),
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
                width: 20,
                height: 20,
                child: Image.asset(
                  'images/drag.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 20,
                height: 20,
                margin: EdgeInsets.only(left: 50),
                child: Image.asset(
                  'images/quet_ma.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ]),
      ),
      actions: [
        IconButton(
          onPressed: () {
            showSearch(context: context, delegate: SearchUser());
          },
          icon: Icon(Icons.search_sharp),
        )
      ],
    ));
  }
}
