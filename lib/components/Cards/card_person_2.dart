import 'package:flutter/material.dart';
class card_person_2 extends StatefulWidget {
  const card_person_2({super.key});

  @override
  State<card_person_2> createState() => _card_person_2State();
}

class _card_person_2State extends State<card_person_2> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(children: [
          Container(
            // margin: EdgeInsets.only(top: 25),
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
