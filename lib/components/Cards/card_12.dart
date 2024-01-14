import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class card_12 extends StatefulWidget {
  const card_12({super.key});

  @override
  State<card_12> createState() => _card_12State();
}

class _card_12State extends State<card_12> {
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
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(50),
      //   child: Column(
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Container(
      //             margin: EdgeInsets.only(top: 16, left: 16),
      //             child: const Text(
      //               'Featured',
      //               style: TextStyle(
      //                 color: Color(0xFF333333),
      //                 fontSize: 18,
      //                 fontFamily: 'SF Pro Display',
      //                 fontWeight: FontWeight.w700,
      //                 height: 0.07,
      //               ),
      //             ),
      //           ),
      //           Row(
      //             children: [
      //               Container(
      //                 margin: EdgeInsets.only(top: 20, right: 0),
      //                 child: const Text(
      //                   'View all',
      //                   textAlign: TextAlign.right,
      //                   style: TextStyle(
      //                     color: Color(0xFF999999),
      //                     fontSize: 14,
      //                     fontFamily: 'SF Pro Display',
      //                     fontWeight: FontWeight.w500,
      //                     height: 0.08,
      //                   ),
      //                 ),
      //               ),
      //               Container(
      //                 margin: EdgeInsets.only(top: 20, right: 15),
      //                 child: Icon(
      //                   Icons.chevron_right,
      //                   size: 20,
      //                   color: Color(0xFF999999),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _allusers.length,
        itemBuilder: (context, index) {
          final user = _allusers[index]!;
          final strCategory = user['strCategory']!;
          final strCategoryThumb = user['strCategoryThumb']!;

          // final strMealThumb = user['strMealThumb']!;
          // final strArea = user['strArea']!;
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
                            left: 16,
                          ),
                          width: 98,
                          height: 64,
                          child: ClipRRect(
                            child: Image.network(
                              strCategoryThumb,
                              fit: BoxFit.cover,
                              alignment: Alignment.topLeft,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Stack(children: [
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            width: 98,
                            height: 64,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color:
                                  Colors.black.withOpacity(0.30000001192092896),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 35, left: 50),
                              child: Text(
                                strCategory,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w700,
                                  height: 0.08,
                                ),
                              ))
                        ])
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
    final url = 'https://www.themealdb.com/api/json/v1/1/categories.php';
    Map<String, String> headers = {
      "Access-Control-Allow-Origin": "*",
      // "Access-Control-Allow-Credentials": true,
      "Access-Control-Allow-Headers":
          "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
    };
    final uri = Uri.parse(url);
    final response = await http.get(
      uri,
    );
    final body = response.body;
    final json = jsonDecode(body);
    final jsonData = json["categories"];
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
        "strCategory": jsonData[i]["strCategory"],

        "strCategoryThumb": jsonData[i]["strCategoryThumb"],
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
