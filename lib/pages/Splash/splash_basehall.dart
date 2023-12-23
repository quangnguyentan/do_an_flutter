import 'package:flutter/material.dart';
import 'package:untitled2/pages/Splash/splash_basehall_1.dart';

class splash_basehall extends StatefulWidget {
  const splash_basehall({super.key});

  @override
  State<splash_basehall> createState() => _splash_basehallState();
}

class _splash_basehallState extends State<splash_basehall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            Stack(children: [
              Container(
                width: 886,
                height: 830,
                child: Image.asset(
                  'images/img_1.png',
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Stack(children: [
                    Container(
                      margin: const EdgeInsets.only(top: 60, left: 315),
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black26,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 70, left: 324),
                      width: 25,
                      height: 25,
                      child: Image.asset(
                        'images/language.png',
                        fit: BoxFit.cover,
                      ),
                    )
                  ]),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 512, left: 20),
                    child: const Text(
                      'Diversity',
                      style: TextStyle(
                          fontSize: 34,
                          fontFamily: 'SF Pro Display',
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 560, left: 20, right: 20),
                    child: const Text(
                      'The food hall provides diverse food for the office crowd and attracts the crowd to the center of the bar.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 729, left: 20),
                    width: 36,
                    height: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFF4C95FF)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 729, left: 5),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey),
                  ),
                  GestureDetector(
                    child: Column(
                      children: [
                        Stack(children: [
                          Container(
                            margin: EdgeInsets.only(top: 720, left: 179),
                            width: 120,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xFF4C95FF)),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 735, left: 223),
                            child: const Text('Next', style: TextStyle(
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
                        MaterialPageRoute(
                            builder: (context) => splash_bashall_1()),
                      );
                    },
                  )
                ],
              )
            ]),
          ],
        ),
      ]),
    );
  }
}