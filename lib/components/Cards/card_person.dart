import 'package:flutter/material.dart';

class card_person extends StatefulWidget {
  const card_person({super.key});

  @override
  State<card_person> createState() => _card_personState();
}

class _card_personState extends State<card_person> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(children: [
          Container(
            margin: EdgeInsets.only(top: 25),
            width: 385,
            height: 50,
            decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(color: Color(0x7FEBEFF2)),
                    bottom: BorderSide(color: Color(0x7FEBEFF2)))),
          ),
          Container(
            margin: EdgeInsets.only(top: 40, left: 16),
            child: Image.asset('images/icon_bookings.png'),
          ),
          Container(
            margin: EdgeInsets.only(top: 38, left: 50),
            child: Text('Bookings', style: TextStyle(
                fontSize: 16,
                color: Color(0xFF333333)
            ),),
          ),
          Container(
              margin: EdgeInsets.only(top: 40, left: 360),
              child: Icon(Icons.expand_more, size: 18, color: Color(0xFF333333),)
          )
        ]),
      ],
    );
  }
}
