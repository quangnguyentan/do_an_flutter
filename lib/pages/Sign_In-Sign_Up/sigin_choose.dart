import 'package:flutter/material.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:untitled2/components/Footer/button.dart';
import 'package:untitled2/pages/App/Person/person.dart';
import 'package:untitled2/pages/Sign_In-Sign_Up/sigin_enter.dart';
import 'package:untitled2/pages/Sign_In-Sign_Up/sigin_enter_email.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:untitled2/pages/Splash/splash_basehall_2.dart';

final _googleSignIn = GoogleSignIn(scopes: <String>[
  'email',
  'https://www.googleapis.com/auth/contacts.readonly'
]);

class sigin_choose extends StatefulWidget {
  const sigin_choose({super.key});

  @override
  State<sigin_choose> createState() => _sigin_chooseState();
}

class _sigin_chooseState extends State<sigin_choose> {
  GoogleSignInAccount? _currentUser;
  Map<String, dynamic>? _userData;

  @override
  void initState() {
    super.initState();

    _googleSignIn.onCurrentUserChanged.listen((account) {
      setState(() {
        _currentUser = account!;
      });
      // if (_currentUser != null) {
      //   print("User is already authenticated");
      // }
    });
    _googleSignIn.signInSilently();
  }

  Future<void> handleSignIn() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Link Google Sign-In with Firebase Auth
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Sign in to Firebase with credential
      await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (error) {
      print("Sign In error: $error");
    }
  }

  // Future<void> handleSignIn() async {
  //   try {
  //     await _googleSignIn.signIn();
  //   } catch (error) {
  //     print("Sign In error: $error");
  //   }
  // }
  // Future<void> signInFacebook() async {
  //   final LoginResult loginResult =
  //       await FacebookAuth.instance.login(permissions: ['email,']);
  //   if (loginResult == LoginStatus.success) {
  //     final userData = await FacebookAuth.instance.getUserData();
  //     _userData = userData;
  //   } else {
  //     print(loginResult.message);
  //   }
  //
  //   final OAuthCredential oAuthCredential =
  //       FacebookAuthProvider.credential(loginResult.accessToken!.token);
  //   await FirebaseAuth.instance.signInWithCredential(oAuthCredential);
  // }

  Future<void> handleSignOut() async {
    await _googleSignIn.disconnect();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => sigin_choose()));
  }

  Future<void> handleNextPage() async {
    Container(
        child: _currentUser != null
            ? person(userData: _currentUser)
            : Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 570, left: 25),
                    width: 335,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFF60CE74),
                    ),
                    child: ElevatedButton(
                      onPressed: handleSignIn,
                      child: Text(
                        "Sign In With Google",
                        style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                    ),
                  ),
                ],
              ));
  }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[800],
//       body: Container(

//     );
//   }
// }

// Widget buildWidget() {
//   GoogleSignInAccount user = _currentUser;
//   if (user != null) {
//     return Column(
//       children: [Text("ABc")],
//     ); // GestureDetector(
//     //   onTap: () {
//     //     Navigator.push(
//     //         context, MaterialPageRoute(builder: (context) => button()));
//     //   },
//     //   child: Center(
//     //     child: Text("Sign In with Google"),
//     //   ),
//     // );
//   } else {
//     return Column(
//       children: [
//         SizedBox(
//           height: 90,
//         ),
//         Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Text(
//             "Welcome to Google Authentication",
//             textAlign: TextAlign.center,
//             style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20),
//           ),
//         ),
//         SizedBox(
//           height: 30,
//         ),
//         Center(
//           child: Container(
//             width: 250,
//             child: ElevatedButton(
//               onPressed: handleSignIn,
//               child: Padding(
//                 padding: EdgeInsets.all(15.0),
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }

  // Future<UserCredential> signInWithGoogle() async {
  //   // Trigger the authentication flow
  //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  //   // Obtain the auth details from the request
  //   final GoogleSignInAuthentication? googleAuth =
  //       await googleUser?.authentication;

  //   // Create a new credential
  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth?.accessToken,
  //     idToken: googleAuth?.idToken,
  //   );

  //   // Once signed in, return the UserCredential
  //   return await FirebaseAuth.instance.signInWithCredential(credential);
  // }

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
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
                      MaterialPageRoute(
                          builder: (context) => splash_basehall_2()),
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
                              margin: EdgeInsets.only(top: 43, left: 12),
                              child: const Text(
                                'Mobile Sign In',
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
                      MaterialPageRoute(builder: (context) => sigin_enter()),
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
                          margin: EdgeInsets.only(top: 110, left: 12),
                          child: const Text(
                            'Email Sign In',
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
                  MaterialPageRoute(builder: (context) => sigin_enter_email()),
                );
              },
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 480, left: 35),
                  width: 144,
                  height: 1,
                  color: Colors.grey,
                ),
                Container(
                  margin: EdgeInsets.only(top: 480, left: 6),
                  child: Text(
                    'or',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 480, left: 6),
                  width: 144,
                  height: 1,
                  color: Colors.grey,
                ),
              ],
            ),
            Column(
              children: [
                Stack(children: [
                  Container(
                    margin: EdgeInsets.only(top: 510, left: 25),
                    width: 335,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFF485A96),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 521, left: 46),
                        child: Image.asset('images/facebook.png'),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 521, left: 20),
                        child: const Text(
                          'Sign in with Facebook',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontFamily: 'SF Pro Display',
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
                Stack(children: [
                  // Container(
                  //     // margin: EdgeInsets.only(top: 570, left: 25),
                  //     // width: 335,
                  //     // height: 44,
                  //     // decoration: BoxDecoration(
                  //     //   borderRadius: BorderRadius.circular(5),
                  //     //   color: Color(0xFF60CE74),
                  //     // ),
                  //     ),
                  Container(
                      child: _currentUser != null
                          ? Row(
                              children: [
                                SizedBox(
                                  height: 90,
                                ),
                                GoogleUserCircleAvatar(identity: _currentUser!),
                                SizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: Text(
                                    _currentUser!.displayName ?? '',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Center(
                                  child: Text(
                                    _currentUser!.email,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                SizedBox(
                                  height: 280,
                                ),
                                Center(
                                  child: Text("Welcome"),
                                ),
                                ElevatedButton(
                                    onPressed: handleSignOut,
                                    child: Text("Sign Out"))
                              ],
                            )
                          : Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 570, left: 25),
                                  width: 335,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xFF60CE74),
                                  ),
                                  child: ElevatedButton(
                                    onPressed: handleSignIn,
                                    child: Text(
                                      "Sign In With Google",
                                      style: TextStyle(
                                        fontSize: 14,
                                        decoration: TextDecoration.none,
                                        fontFamily: 'SF Pro Display',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                ]),
              ],
            ),
            Column(
              children: [
                Stack(children: [
                  Container(
                    margin: EdgeInsets.only(top: 630, left: 25),
                    width: 335,
                    height: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        border: Border(
                          top: BorderSide(width: 1, color: Color(0xFF666666)),
                          left: BorderSide(width: 1, color: Color(0xFF666666)),
                          right: BorderSide(width: 1, color: Color(0xFF666666)),
                          bottom:
                              BorderSide(width: 1, color: Color(0xFF666666)),
                        )),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 641, left: 46),
                        child: Image.asset('images/Apple.png'),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 641, left: 20),
                        child: const Text(
                          'Sign in with Apple',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontFamily: 'SF Pro Display',
                          ),
                        ),
                      )
                    ],
                  ),
                ]),
              ],
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  top: 710,
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
    ]);
  }
}
