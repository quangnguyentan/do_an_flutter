import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/pages/Sign_In-Sign_Up/sigin_choose.dart';
import 'package:untitled2/pages/Sign_In-Sign_Up/sigin_enter_email.dart';
import 'package:untitled2/pages/Sign_In-Sign_Up/sigin_up.dart';

class sigin_up_email extends StatefulWidget {
  const sigin_up_email({super.key});

  @override
  State<sigin_up_email> createState() => _sigin_up_emailState();
}

class _sigin_up_emailState extends State<sigin_up_email> {
  bool _isVisible = true;
  bool _isChecked = false;
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
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
                  MaterialPageRoute(builder: (context) => sigin_up()),
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
                          'images/email.png',
                          color: Color(0xFF4C95FF),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 43, left: 12),
                        child: const Text(
                          'Email Sign Up',
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
                  MaterialPageRoute(builder: (context) => sigin_up()),
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
            child: TextFormField(
              controller: username,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Color(0xFFEBEFF2),
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          BorderSide(color: Color(0xFF4C95FF), width: 2)),
                  labelText: 'Enter your name',
                  labelStyle: TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 14,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                  )),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Container(
            width: 370,
            height: 44,
            margin: EdgeInsets.only(top: 16, left: 16, right: 16),
            child: TextField(
              controller: email,
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
      Column(
        children: [
          Container(
            width: 370,
            height: 44,
            margin: EdgeInsets.only(top: 16, left: 16, right: 16),
            child: TextField(
              controller: password,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Color(0xFFEBEFF2),
                      width: 2,
                    ),
                  ),
                  suffix: GestureDetector(
                    child: Icon(
                      _isVisible
                          ? Icons.visibility_off_outlined
                          : Icons.visibility,
                      color: Color(0xFF4C95FF),
                    ),
                    onTap: () {
                      setState(() {
                        _isVisible = !_isVisible;
                      });
                    },
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          BorderSide(color: Color(0xFF4C95FF), width: 2)),
                  prefixStyle: const TextStyle(
                    color: Color(0xFF64748B),
                    fontSize: 16,
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 14,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                  )),
              obscureText: _isVisible,
            ),
          ),
        ],
      ),
      Row(
        children: [
          Column(
            children: [
              Stack(children: [
                Container(
                  margin: EdgeInsets.only(top: 16, left: 16),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      border: Border.all(width: 1, color: Color(0xFF4C95FF))),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _isChecked = !_isChecked;
                      });
                    },
                    child: _isChecked
                        ? Icon(
                            Icons.done,
                            color: Colors.blue,
                            size: 15,
                          )
                        : Container(),
                  ),
                ),
              ]),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 16, left: 8),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'I agree ',
                    style: TextStyle(
                      color: Color(0xFF403D3A),
                      fontSize: 14,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w400,
                      height: 0.08,
                    ),
                  ),
                  TextSpan(
                    text: 'Terms',
                    style: TextStyle(
                      color: Color(0xFF4C95FF),
                      fontSize: 14,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w500,
                      height: 0.08,
                    ),
                  ),
                  TextSpan(
                    text: ' & ',
                    style: TextStyle(
                      color: Color(0xFF403D3A),
                      fontSize: 14,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w400,
                      height: 0.08,
                    ),
                  ),
                  TextSpan(
                    text: 'Conditions',
                    style: TextStyle(
                      color: Color(0xFF4C95FF),
                      fontSize: 14,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w600,
                      height: 0.08,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
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
                    top: 40,
                  ),
                  child: const Text(
                    'Sign Up',
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
        onTap: () async {
          try {
            final credential =
                await FirebaseAuth.instance.createUserWithEmailAndPassword(
              email: email.text,
              password: password.text,
            );

            FirebaseAuth.instance.currentUser!.sendEmailVerification();
            print("Sent email verification, please check your email");
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => sigin_enter_email()));
          } on FirebaseAuthException catch (e) {
            if (e.code == 'weak-password') {
              print('The password provided is too weak.');
            } else if (e.code == 'email-already-in-use') {
              print('The account already exists for that email.');
            }
          } catch (e) {
            print(e);
          }
        },
      ),
    ]));
  }
}
