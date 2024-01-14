import 'package:flutter/material.dart';
import 'package:untitled2/components/Utils/order_const.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class card__order extends StatefulWidget {
  card__order({super.key});

  @override
  State<card__order> createState() => _card__orderState();
}

class _card__orderState extends State<card__order> {
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
      body: ListView.builder(
        itemCount: _allusers.length,
        itemBuilder: (context, index) {
          final user = _allusers[index]!;
          // final email = user['contactInfo']['email']!;
          final strMeal = user['strMeal']!;
          final strMealThumb = user['strMealThumb']!;
          final strArea = user['strArea']!;
          return Stack(children: [
            Container(
              margin: EdgeInsets.only(top: 16, left: 16),
              width: 165,
              height: 130,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x0C3C506E),
                      blurRadius: 10,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 16, left: 16),
              width: 165,
              height: 80,
              decoration: const BoxDecoration(
                  color: Color(0xFF4C95FF),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6))),
              child: Image.network(
                'https://i.pinimg.com/564x/2d/ce/6d/2dce6d5cd8400bab06605db59160aa5a.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 113, left: 25),
              child: Text(
                'Roti Tori',
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 14,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w700,
                  height: 0.08,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 129, left: 25),
              child: const Text(
                'Japanese',
                style: TextStyle(
                  color: Color(0xFFBBBBBB),
                  fontSize: 11,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                  height: 0.11,
                ),
              ),
            )
          ]);
        },
      ),
    );
  }

  void fetchApi() async {
    final url = 'https://www.themealdb.com/api/json/v1/1/search.php?f=b';
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
