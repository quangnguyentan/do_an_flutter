import 'package:flutter/material.dart';
import 'package:untitled2/components/Cards/card__order.dart';
import 'package:untitled2/components/Cards/card__order__2.dart';
import 'package:untitled2/pages/App/Order/app__header.dart';

class order extends StatefulWidget {
  const order({super.key});

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(children: [
                Container(
                  width: 400,
                  height: 40,
                  color: Color(0xFF4C95FF),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 16),
                  child: Icon(Icons.menu, size: 20, color: Colors.white),
                )
              ]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              card__order(),
              card__order__2(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              card__order(),
              card__order__2(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              card__order(),
              card__order__2(),
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              card__order(),

            ],
          ),

        ],
      ),
    );
  }
}
