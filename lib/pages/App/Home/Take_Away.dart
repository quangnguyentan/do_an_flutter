import 'package:flutter/material.dart';
import 'package:untitled2/MyApp.dart';
import 'package:untitled2/components/Cards/card_8.dart';
import 'package:untitled2/components/Footer/button.dart';
import 'package:untitled2/components/Header/app_bar.dart';
import 'package:untitled2/themes/app_color.dart';
import '../../../components/Cards/card.dart';
import '../../../components/Cards/card_2.dart';
import '../../../components/Cards/card_3.dart';
import '../../../components/Cards/card_4.dart';
import '../../../components/Cards/card_5.dart';
import '../../../components/Cards/card_6.dart';


class Take_Away extends StatefulWidget {
  const Take_Away({super.key});

  @override
  State<Take_Away> createState() => _Take_AwayState();
}

class _Take_AwayState extends State<Take_Away> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [

        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16, left: 16),
                  child: const Text(
                    'Featured',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 18,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w700,
                      height: 0.07,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, right: 0),
                      child: const Text(
                        'View all',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          height: 0.08,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, right: 15),
                      child: Icon(
                        Icons.chevron_right,
                        size: 20,
                        color: Color(0xFF999999),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 254,
          child: ListView(scrollDirection: Axis.horizontal, children: const [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    card()
                  ],
                ),
                Column(
                  children: [
                    card_4()
                  ],
                ),
                Column(
                  children: [
                    card_2()
                  ],
                ),
                Column(
                  children: [
                   card_3()
                  ],
                ),
                Column(
                  children: [
                   card_4()
                  ],
                ),
              ],
            ),
          ]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 16, left: 16),
              child: const Text(
                'Featured',
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 18,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w700,
                  height: 0.07,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, right: 0),
                  child: const Text(
                    'View all',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF999999),
                      fontSize: 14,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      height: 0.08,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, right: 15),
                  child: const Icon(
                    Icons.chevron_right,
                    size: 20,
                    color: Color(0xFF999999),
                  ),
                )
              ],
            ),
          ],
        ),
        const Column(
          children: [
            card_5()
          ],
        ),
        const Column(
          children: [
            card_5()
          ],
        ),
        const Column(
          children: [
            card_5()
          ],
        ),
        const Column(
          children: [
            card_6()
          ],
        ),

      ]),
    );
  }
}

class App_Bar {
}
