import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:untitled2/components/Cards/card_5.dart';

class card_8 extends StatefulWidget {
  const card_8({super.key});

  @override
  State<card_8> createState() => _card_8State();
}

class _card_8State extends State<card_8> {
  List<Map<String, dynamic>> _allusers = [];
  // List<Map<String, dynamic>> _users = [];
  List<dynamic> users = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16, left: 16),
                  child: const Text(
                    'Featured',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 18,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w700,
                      height: 0.07,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, right: 0),
                      child: const Text(
                        'View all',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          height: 0.08,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, right: 15),
                      child: Icon(
                        Icons.chevron_right,
                        size: 20,
                        color: Color(0xFF999999),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _allusers.length,
        itemBuilder: (context, index) {
          final user = _allusers[index]!;
          final strMeal = user['strMeal']!;
          final strMealThumb = user['strMealThumb']!;
          final strArea = user['strArea']!;
          return Column(
            children: [
              SizedBox(
                child: SingleChildScrollView(
                  // scrollDirection: Axis.vertical,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 8,
                            left: 16,
                          ),
                          width: 250,
                          height: 234,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                    blurRadius: 10,
                                    color: Color(0x0C3C506F))
                              ]),
                        ),
                        Stack(children: [
                          Container(
                            margin: EdgeInsets.only(top: 8, left: 16),
                            width: 250,
                            height: 134,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              child: Image.network(
                                strMealThumb,
                                fit: BoxFit.fill,
                                alignment: Alignment.topLeft,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Stack(children: [
                                Container(
                                  margin: EdgeInsets.only(top: 20, left: 230),
                                  width: 28,
                                  height: 14,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(2)),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 27, left: 236),
                                  child: const Text(
                                    '\$\$\$',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 10,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w700,
                                      height: 0.12,
                                    ),
                                  ),
                                )
                              ]),
                            ],
                          ),
                          Column(
                            children: [
                              Stack(children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 119, left: 210, right: 12),
                                  width: 44,
                                  height: 44,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Color(0xFF4C95FF)),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 139,
                                    left: 218,
                                  ),
                                  child: const Text(
                                    '20-30',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w600,
                                      height: 0.10,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 151, left: 224),
                                  child: const Opacity(
                                    opacity: 0.80,
                                    child: Text(
                                      'min',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w600,
                                        height: 0.12,
                                      ),
                                    ),
                                  ),
                                )
                              ]),
                            ],
                          )
                        ]),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 164, left: 28),
                              child: Text(
                                strMeal,
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w700,
                                  height: 0.06,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 178, left: 28),
                                  child: Image.asset('images/Star.png'),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 178, left: 4),
                                  child: const Text(
                                    '5.0',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 13,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w500,
                                      height: 0.08,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 178, left: 2),
                                  child: const Text(
                                    '(99+)',
                                    style: TextStyle(
                                      color: Color(0xFF999999),
                                      fontSize: 12,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                      height: 0.10,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 178, left: 8),
                                  width: 1,
                                  height: 10,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEAEAEA),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(1)),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 178, left: 8),
                                  child: Text(
                                    strArea,
                                    style: TextStyle(
                                      color: Color(0xFF999999),
                                      fontSize: 13,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                      height: 0.08,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 178, left: 8),
                                  width: 1,
                                  height: 10,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFEAEAEA),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(1)),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 178, left: 8),
                                  child: const Text(
                                    '50m',
                                    style: TextStyle(
                                      color: Color(0xFF999999),
                                      fontSize: 13,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                      height: 0.08,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Stack(children: [
                                      Opacity(
                                        opacity: 0.10,
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              top: 196, left: 28),
                                          width: 117,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Color(0xFF4C95FF),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 200, left: 36),
                                            child: Text(
                                              'Quick \$100+',
                                              style: TextStyle(
                                                color: Color(0xFF4C95FF),
                                                fontSize: 14,
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w600,
                                                height: 0.08,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 200, left: 8),
                                            child: Image.asset(
                                                'images/icon_Quick_14x14.png'),
                                          )
                                        ],
                                      )
                                    ]),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Stack(children: [
                                      Opacity(
                                        opacity: 0.10,
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              top: 196, left: 8),
                                          width: 100,
                                          height: 24,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF8B147),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 200, left: 16),
                                            child: const Text(
                                              'Take Away',
                                              style: TextStyle(
                                                color: Color(0xFFFAAB36),
                                                fontSize: 14,
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w600,
                                                height: 0.08,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 200, left: 8),
                                            child: Image.asset(
                                                'images/icon_Take_away_14x14.png'),
                                          )
                                        ],
                                      )
                                    ]),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ])
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void fetchApi() async {
    final url = 'https://www.themealdb.com/api/json/v1/1/search.php?f=l';
    Map<String, String> headers = {
      "Access-Control-Allow-Origin": "*",
      // "Access-Control-Allow-Credentials": true,
      "Access-Control-Allow-Headers":
          "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
    };
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final jsonData = json["meals"];
    // for (var i = 0; i < json["meals"].length; i++) {
    //   _users.add({
    //     // "id": jsonData[i]["_id"],
    //     "strMeal": json[i]["strMeal"],
    //     // "averageScore": jsonData[i]["averageScore"],
    //   });
    // }

    for (var i = 0; i < jsonData.length; i++) {
      _allusers.add({
        // "id": jsonData[i]["_id"],
        "strMeal": jsonData[i]["strMeal"],
        "strMealThumb": jsonData[i]["strMealThumb"],
        "strArea": jsonData[i]["strArea"],

        // "averageScore": jsonData[i]["averageScore"],
      });
    }

    setState(() {
      // users = jsonData;
      _allusers;
    });
    print(_allusers);

    print("fetch user completed");
  }
}
