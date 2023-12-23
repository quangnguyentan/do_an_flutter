import 'package:flutter/material.dart';
import 'package:untitled2/pages/Sign_In-Sign_Up/sigin_choose.dart';
import 'package:untitled2/pages/Sign_In-Sign_Up/sigin_up_email.dart';
import 'package:untitled2/pages/Sign_In-Sign_Up/sigin_up_mobile.dart';

class sigin_up extends StatefulWidget {
  const sigin_up({super.key});

  @override
  State<sigin_up> createState() => _sigin_upState();
}

class _sigin_upState extends State<sigin_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            Stack(children: [
              Container(
                width: 400,
                height: 88,
                color: Color(0xFF4C95FF),
              ),
              Row(
                children: [
                  GestureDetector(
                    child: Column(
                      children: [
                        Stack(children: [
                          Container(
                            margin: EdgeInsets.only(top: 50, left: 16),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white30,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 54, left: 21),
                            child: const Icon(
                              Icons.close,
                              size: 20,
                              color: Colors.white,
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
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 65, left: 125),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w600,
                          height: 0.06,
                          decoration: TextDecoration.none),
                    ),
                  )
                ],
              )
            ]),
          ],
        ),
        Column(
          children: [
            Stack(children: [
              Container(
                width: 400,
                height: 750,
                color: Colors.white,
              ),
              Row(
                children: [
                  GestureDetector(
                    child: Column(
                      children: [
                        Stack(children: [
                          Container(
                            margin: EdgeInsets.only(top: 24, left: 23),
                            width: 343,
                            height: 46,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xFF4C95FF),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 35, left: 42),
                                width: 24,
                                height: 24,
                                child: Image.asset('images/img_4.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 40, left: 12),
                                child: const Text(
                                  'Mobile Sign Up',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w600,
                                    height: 0.08,
                                    letterSpacing: 0.20,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              )
                            ],
                          )
                        ]),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => sigin_up_mobile()),
                      );
                    },
                  ),
                ],
              ),
              GestureDetector(
                child: Column(
                  children: [
                    Stack(children: [
                      Container(
                        margin: EdgeInsets.only(top: 90, left: 23),
                        width: 343,
                        height: 46,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFF4C95FF),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 100, left: 42),
                            width: 24,
                            height: 24,
                            child: Image.asset('images/email.png'),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 100, left: 12),
                            child: const Text(
                              'Email Sign Up',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w600,
                                height: 0.08,
                                letterSpacing: 0.20,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          )
                        ],
                      )
                    ]),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => sigin_up_email()),
                  );
                },
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                    top: 740,
                  ),
                  width: 134,
                  height: 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black),
                ),
              )
            ]),
          ],
        )
      ]),
    );
  }
}
