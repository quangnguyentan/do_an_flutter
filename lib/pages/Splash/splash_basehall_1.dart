import 'package:flutter/material.dart';
import 'package:untitled2/pages/Splash/splash_basehall_2.dart';
class splash_bashall_1 extends StatefulWidget {
  const splash_bashall_1({super.key});

  @override
  State<splash_bashall_1> createState() => _splash_bashall_1State();
}

class _splash_bashall_1State extends State<splash_bashall_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [Column(
          children: [
            Stack(children: [
              Container(
                width: 886,
                height: 812,
                child: Image.asset(
                  'images/img_3.png',
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
                      'BaseHall',
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
                    width: 335,
                    child: const Text(
                      'Welcome to BaseHall. Order now from a diverse range of cuisines for collection at the Jardine House food hall.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                child: Column(
                  children: [
                    Stack(children: [
                      Container(
                        margin: EdgeInsets.only(top: 720, left: 20),
                        width: 345,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xFF4C95FF)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 735, left: 130),
                        child: const Text('Time to start ordering', style: TextStyle(
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
                        builder: (context) => splash_basehall_2()),
                  );
                },
              )
            ]),
          ],
        ),
    ]
      ),
    );
  }
}
