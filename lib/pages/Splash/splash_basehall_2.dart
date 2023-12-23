import 'package:flutter/material.dart';
import 'package:untitled2/pages/Sign_In-Sign_Up/sigin_choose.dart';
import 'package:untitled2/pages/Splash/splash_basehall_1.dart';

class splash_basehall_2 extends StatefulWidget {
  const splash_basehall_2({super.key});

  @override
  State<splash_basehall_2> createState() => _splash_basehall_2State();
}

class _splash_basehall_2State extends State<splash_basehall_2> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        children: [
          Stack(children: [
            Container(
              width: 400,
              height: 482,
              color: Color(0xFF4C95FF),
            ),
            Container(
              margin: EdgeInsets.only(top: 180, left: 85),
              width: 220,
              height: 121,
              child: Image.asset('images/img_2.png'),
            )
          ]),
        ],
      ),
      Column(
        children: [
          Stack(children: [
            Container(
              width: 400,
              height: 330,
              color: Colors.white,
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 32, left: 20),
                  child: const Text(
                    'BaseHall',
                    style: TextStyle(
                        fontSize: 34,
                        fontFamily: 'SF Pro Display',
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 86, left: 20, right: 20),
                  child: const Text(
                    'Welcome to BaseHall. Order now from a diverse range of cuisines for collection at the Jardine House food hall.',
                    style: TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 20,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none),
                  ),
                ),
              ],
            ),
            GestureDetector(
              child: Column(
                children: [
                  Stack(children: [
                    Container(
                      margin: EdgeInsets.only(top: 236, left: 20),
                      width: 345,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFF4C95FF)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 252, left: 125),
                      child: const Text(
                        'Time to start ordering',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    )
                  ]),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => sigin_choose()),
                );
              },
            )
          ]),
        ],
      ),
    ]);
  }
}
