import 'package:flutter/material.dart';
import 'package:untitled2/pages/Sign_In-Sign_Up/forgot_pass.dart';
class forgot_pass_mobile extends StatefulWidget {
  const forgot_pass_mobile({super.key});

  @override
  State<forgot_pass_mobile> createState() => _forgot_pass_mobileState();
}

class _forgot_pass_mobileState extends State<forgot_pass_mobile> {
  bool _isVisible = true;
  bool _isChecked = false;
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
                            'Mobile Retrieve',
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
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => forgot_pass()),
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
                margin: EdgeInsets.only(top: 16, left: 16, right: 16),
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
                    margin: EdgeInsets.only(left: 30, top: 15),
                    width: 30,
                    height: 30,
                    child: Image.network(
                      'https://w7.pngwing.com/pngs/436/292/png-transparent-flag-of-south-vietnam-flag-of-vietnam-flag-miscellaneous-angle-flag-thumbnail.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 8),
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
                    margin: EdgeInsets.only(top: 15, left: 6),
                    child: Icon(
                      Icons.expand_more,
                      size: 18,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 12),
                    width: 2,
                    height: 14,
                    color: Color(0xFFBBCCE2),
                  ),
                  Container(
                    width: 228,
                    height: 44,
                    margin: EdgeInsets.only(top: 18, left: 16, right: 16),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                              BorderSide(color: Color(0xFF4C95FF), width: 2)),
                          labelText: 'Enter your phone number',
                          labelStyle: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 14,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0.08,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
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
                    suffix: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: GestureDetector(
                        child: Text(
                          'Send',
                          style: TextStyle(
                            color: Color(0xFF4C95FF),
                            fontSize: 12,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                            height: 0.10,
                          ),
                        ),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                        BorderSide(color: Color(0xFF4C95FF), width: 2)),
                    prefixStyle: const TextStyle(
                      color: Color(0xFF64748B),
                      fontSize: 16,
                    ),
                    labelText: 'Verification code',
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

        Column(
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
      ]),
    );
  }
}
