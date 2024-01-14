import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/components/Footer/button.dart';
import 'package:untitled2/main.dart';
import 'package:untitled2/pages/App/Home/Book.dart';
import 'package:untitled2/pages/Sign_In-Sign_Up/forgot_pass.dart';
import 'package:untitled2/pages/Sign_In-Sign_Up/sigin_choose.dart';
import 'package:untitled2/pages/Sign_In-Sign_Up/sigin_up.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class sigin_enter_email extends StatefulWidget {
  const sigin_enter_email({super.key});

  @override
  State<sigin_enter_email> createState() => _sigin_enter_emailState();
}

class _sigin_enter_emailState extends State<sigin_enter_email> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future signInWithGoogle() async {
    // // Trigger the authentication flow
    // final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    // if (googleUser == null) {
    //   return;
    // }
    // // Obtain the auth details from the request
    // final GoogleSignInAuthentication? googleAuth =
    //     await googleUser?.authentication;
    //
    // // Create a new credential
    // final credential = GoogleAuthProvider.credential(
    //   accessToken: googleAuth?.accessToken,
    //   idToken: googleAuth?.idToken,
    // );
    //
    // // Once signed in, return the UserCredential
    // await FirebaseAuth.instance.signInWithCredential(credential);

    // Navigator.push(context, MaterialPageRoute(builder: (context) => button()));
  }

  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    super.initState();
  }

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
                          'images/email.png',
                          color: Color(0xFF4C95FF),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 43, left: 12),
                        child: const Text(
                          'Email Sign In',
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
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(top: 16, left: 36),
                    width: 300,
                    height: 44,
                    child: TextField(
                      controller: email,
                      decoration: InputDecoration(
                        hintText: 'Enter your email address',
                        hintStyle: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF999999),
                        ),
                        border: InputBorder.none,
                        // suffixIcon: showIcon? Padding(
                        //   padding: const EdgeInsets.only(top: 17, left: 20),
                        //   child: Icon(Icons.close,),
                        // ): null,
                      ),
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  // onTap: () {
                  //   setState(() {
                  //     showIcon = true;
                  //   });
                  // },
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
          child: TextField(
            controller: password,
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
        GestureDetector(
          child: Container(
            margin: EdgeInsets.only(top: 42, left: 270),
            width: 80,
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
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => forgot_pass()));
          },
        )
      ]),
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
              onTap: () async {
                try {
                  final credential =
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: email.text,
                    password: password.text,
                  );
                  if (credential.user!.emailVerified) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => button()));
                  } else {
                    FirebaseAuth.instance.currentUser!.sendEmailVerification();
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.rightSlide,
                      title: 'Error',
                      desc: 'Email still verified',
                    ).show();
                  }
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'wrong-password') {
                    print('Wrong password provided for that email.');
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.rightSlide,
                      title: 'Error',
                      desc: 'Wrong password provided for that email',
                    ).show();
                  } else if (e.code == 'email-already-in-use') {
                    print('The account already exists for that email.');
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.rightSlide,
                      title: 'Error',
                      desc: 'The account already exists for that email.',
                    ).show();
                  } else if (e.code == 'user-not-found') {
                    print('No user found for that email.');
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("No user found for that email."),
                      backgroundColor: Colors.red,
                    ));
                  }
                } catch (e) {
                  print(e);
                }
              },
            ),
          ]),
        ],
      ),
      MaterialButton(
        height: 40,
        onPressed: () {
          signInWithGoogle();
        },
        child: Row(children: [
          Image.asset(
            'images/Wechat.png',
            width: 20,
          ),
        ]),
      ),
      Row(
        children: [
          Container(
            width: 160,
            height: 30,
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
              width: 100,
              height: 30,
              margin: EdgeInsets.only(
                top: 24,
              ),
              child: const Text(
                'Sign up now',
                style: TextStyle(
                  color: Color(0xFF4C95FF),
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
      ),
    ]));
  }
}
