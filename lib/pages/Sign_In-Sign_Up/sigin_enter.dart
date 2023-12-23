import 'package:flutter/material.dart';
import 'package:untitled2/components/Footer/button.dart';
import 'package:untitled2/pages/App/Home/Take_Away.dart';
import 'package:untitled2/pages/Sign_In-Sign_Up/sigin_choose.dart';
import 'package:untitled2/pages/Sign_In-Sign_Up/sigin_up.dart';

class sigin_enter extends StatefulWidget {
  const sigin_enter({super.key});

  @override
  State<sigin_enter> createState() => _sigin_enterState();
}

class _sigin_enterState extends State<sigin_enter> {
  bool showIcon = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
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
                'Sign In',
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
      Row(
        children: [
          Column(
            children: [
              Stack(children: [
                Container(
                  margin: EdgeInsets.only(top: 24, left: 16),
                  width: 239,
                  height: 46,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(width: 1, color: Color(0xFF4C95FF)),
                        left: BorderSide(width: 1, color: Color(0xFF4C95FF)),
                        right: BorderSide(width: 1, color: Color(0xFF4C95FF)),
                        bottom: BorderSide(width: 1, color: Color(0xFF4C95FF)),
                      )),
                ),
                GestureDetector(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 35, left: 28),
                        width: 24,
                        height: 24,
                        child: Image.asset(
                          'images/img_4.png',
                          color: Color(0xFF4C95FF),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 43, left: 12),
                        child: const Text(
                          'Mobile Sign In',
                          style: TextStyle(
                            color: Color(0xFF4C95FF),
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
                  ),
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) =>),
                  //   );
                  // },
                )
              ]),
            ],
          ),
          Stack(children: [
            Container(
              margin: EdgeInsets.only(top: 24, left: 16),
              width: 105,
              height: 46,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFF4C95FF)),
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(top: 38, left: 55),
                child: Text(
                  'Back',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      decoration: TextDecoration.none),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => sigin_choose()),
                );
              },
            )
          ])
        ],
      ),
      Column(
        children: [
          Stack(children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 16, right: 16),
              width: 370,
              height: 46,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0x66F6F6F6),
                  border: const Border(
                    top: BorderSide(
                        width: 1,
                        color: Color(
                          0xFFEBEFF2,
                        )),
                    left: BorderSide(
                        width: 1,
                        color: Color(
                          0xFFEBEFF2,
                        )),
                    right: BorderSide(
                        width: 1,
                        color: Color(
                          0xFFEBEFF2,
                        )),
                    bottom: BorderSide(
                        width: 1,
                        color: Color(
                          0xFFEBEFF2,
                        )),
                  )),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 28),
                  width: 30,
                  height: 30,
                  child: Image.network(
                    'https://w7.pngwing.com/pngs/436/292/png-transparent-flag-of-south-vietnam-flag-of-vietnam-flag-miscellaneous-angle-flag-thumbnail.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 28, left: 8),
                  child: const Text(
                    '+84',
                    style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 14,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        height: 0.07,
                        decoration: TextDecoration.none),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 28, left: 6),
                  child: Icon(
                    Icons.expand_more,
                    size: 18,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 28, left: 12),
                  width: 2,
                  height: 14,
                  color: Color(0xFFBBCCE2),
                ),
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    width: 230,
                    height: 44,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter phone number',
                        hintStyle: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF999999),
                        ),
                        border: InputBorder.none,
                        suffixIcon: showIcon
                            ? Padding(
                                padding:
                                    const EdgeInsets.only(top: 17, left: 20),
                                child: Icon(
                                  Icons.close,
                                ),
                              )
                            : null,
                      ),
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      showIcon = true;
                    });
                  },
                ),
              ],
            )
          ]),
        ],
      ),
      Stack(children: [
        Container(
          margin: EdgeInsets.only(top: 20, left: 16, right: 16),
          width: 370,
          height: 46,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0x66F6F6F6),
              border: const Border(
                top: BorderSide(
                    width: 1,
                    color: Color(
                      0xFFEBEFF2,
                    )),
                left: BorderSide(
                    width: 1,
                    color: Color(
                      0xFFEBEFF2,
                    )),
                right: BorderSide(
                    width: 1,
                    color: Color(
                      0xFFEBEFF2,
                    )),
                bottom: BorderSide(
                    width: 1,
                    color: Color(
                      0xFFEBEFF2,
                    )),
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 15, left: 32, right: 16),
          color: Color(0x66F6F6F6),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(
                fontSize: 13,
                color: Color(0xFF999999),
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
            ),
            obscureText: true,
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 42, left: 320),
          child: const Text(
            'Forgot ?',
            style: TextStyle(
              color: Color(0xFF687F7C),
              fontSize: 12,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w600,
              height: 0.10,
            ),
          ),
        )
      ]),
      GestureDetector(
        child: Column(
          children: [
            Stack(children: [
              Container(
                margin: EdgeInsets.only(top: 16, left: 16, right: 16),
                width: 363,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFF4C95FF),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                    top: 40,
                  ),
                  child: const Text(
                    'Sign In',
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
                ),
              )
            ]),
          ],
        ),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => button()));
        },
      ),
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 24, left: 16),
            child: const Text(
              'Don’t  have an account?',
              style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 14,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                height: 0.08,
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(top: 24, left: 6),
              child: const Text(
                'Sign up now',
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 14,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                  height: 0.08,
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sigin_up()),
              );
            },
          ),
        ],
      ),
      Center(
        child: Container(
          margin: EdgeInsets.only(top: 402),
          width: 134,
          height: 5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.black),
        ),
      )
    ]));
  }
}
