import 'package:flutter/material.dart';
import 'package:untitled2/pages/Sign_In-Sign_Up/forgot_pass.dart';

class forgot_pass_email extends StatefulWidget {
  const forgot_pass_email({super.key});

  @override
  State<forgot_pass_email> createState() => _forgot_pass_emailState();
}

class _forgot_pass_emailState extends State<forgot_pass_email> {
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
                    MaterialPageRoute(builder: (context) => forgot_pass()),
                  );
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 65, left: 80),
                child: const Text(
                  'Forgot Password',
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
                          bottom:
                              BorderSide(width: 1, color: Color(0xFF4C95FF)),
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
                            'images/email.png',
                            color: Color(0xFF4C95FF),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 43, left: 12),
                          child: const Text(
                            'Email Retrieve',
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
                    MaterialPageRoute(builder: (context) => forgot_pass()),
                  );
                },
              )
            ])
          ],
        ),
        Column(
          children: [
            Container(
              width: 370,
              height: 44,
              margin: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Color(0xFFEBEFF2),
                        width: 2,
                      ),
                    ),
                    // suffix: Padding(
                    //   padding: const EdgeInsets.only(bottom: 30),
                    //   child: GestureDetector(
                    //     child: Text(
                    //       'Send',
                    //       style: TextStyle(
                    //         color: Color(0xFF4C95FF),
                    //         fontSize: 12,
                    //         fontFamily: 'SF Pro Display',
                    //         fontWeight: FontWeight.w600,
                    //         height: 0.10,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            BorderSide(color: Color(0xFF4C95FF), width: 2)),
                    prefixStyle: const TextStyle(
                      color: Color(0xFF64748B),
                      fontSize: 16,
                    ),
                    labelText: 'Enter your email address',
                    labelStyle: TextStyle(
                      color: Color(0xFF999999),
                      fontSize: 14,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      height: 0.08,
                    )),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: 16, right: 16),
          width: 349,
          height: 36,
          child: const Text(
            'we will send you an email with instructions to recover your password.',
            style: TextStyle(
              color: Color(0xFF999999),
              fontSize: 14,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
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
                      top: 43,
                    ),
                    child: const Text(
                      'Send',
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
          // onTap: () {
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (context) => sigin_enter_email())
          //   );
          // },
        ),
      ]),
    );
  }
}
