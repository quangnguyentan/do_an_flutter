import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'package:untitled2/components/Cards/card_person.dart';
import 'package:untitled2/components/Cards/card_person_2.dart';
import 'package:untitled2/pages/Sign_In-Sign_Up/sigin_enter_email.dart';

class person extends StatefulWidget {
  final userData;
  const person({super.key, @required this.userData});

  @override
  State<person> createState() => _personState();
}

class _personState extends State<person> {
  late String displayName;

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Map<String, dynamic> userdata = widget.userData;
  //   displayName = userdata['displayName'];
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 16, right: 20),
            alignment: Alignment.topRight,
            child: Icon(
              Icons.settings,
              size: 20,
            ),
          ),
          Column(
            children: [
              Stack(children: [
                Container(
                  margin: EdgeInsets.only(top: 16),
                  width: 72,
                  height: 72,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      'https://i.pinimg.com/474x/27/38/02/273802e7af71ddd058dcb2c222cfaf1a.jpg',
                      fit: BoxFit.cover,
                      alignment: Alignment.topLeft,
                    ),
                  ),
                ),
                Stack(children: [
                  Container(
                    margin: EdgeInsets.only(top: 60, left: 45),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                    child: Icon(
                      Icons.edit,
                      size: 18,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 63, left: 63),
                    child: Text(
                      '..',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  )
                ])
              ]),
            ],
          ),
          Container(
            child: Center(
              child: Text(
                "abc",
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Column(
            children: [card_person()],
          ),
          Column(
            children: [card_person_2()],
          ),
          Column(
            children: [card_person_2()],
          ),
          Column(
            children: [card_person_2()],
          ),
          card_person_2(),
          card_person_2(),
          card_person_2(),
          card_person_2(),
          card_person_2(),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 16, bottom: 20),
                width: 343,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF4C95FF)),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () async {
                            // GoogleSignIn googleSignIn = GoogleSignIn();
                            // googleSignIn.disconnect();
                            await FirebaseAuth.instance.signOut();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => sigin_enter_email()));
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sign Out',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w700,
                                  height: 0.06,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Icon(Icons.exit_to_app),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
