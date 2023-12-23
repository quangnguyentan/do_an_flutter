import 'package:flutter/material.dart';
import 'package:untitled2/components/Utils/order_const.dart';

class card__order extends StatefulWidget {
  card__order({super.key});

  @override
  State<card__order> createState() => _card__orderState();

}

class _card__orderState extends State<card__order> {

  @override
  Widget build(BuildContext context) {
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
                topRight: Radius.circular(6)
            )
        ),
        child: Image.network(
          'https://i.pinimg.com/564x/2d/ce/6d/2dce6d5cd8400bab06605db59160aa5a.jpg',
          fit: BoxFit.cover,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 113, left: 25),
        child: const Text(
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
  }
}

