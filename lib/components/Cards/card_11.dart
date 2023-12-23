import 'package:flutter/material.dart';
import 'package:untitled2/components/Items/item_4.dart';

class card_11 extends StatefulWidget {
  const card_11({super.key});

  @override
  State<card_11> createState() => _card_11State();
}

class _card_11State extends State<card_11> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.only(top: 16, left: 23),
        width: 343,
        height: 112,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                  blurRadius: 10,
                  color: Color(0x0C3C506F))
            ]),
      ),
      Row(
        children: [
          Column(
            children: [
              Stack(children: [
                Container(
                  margin: EdgeInsets.only(top: 32, left: 39, right: 16),
                  width: 80,
                  height: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://icdn.dantri.com.vn/thumb_w/770/2022/01/25/canh-diem-7-1643095195606.jpeg',
                      fit: BoxFit.cover,
                      alignment: Alignment.topLeft,
                    ),
                  ),
                ),
                Stack(children: [
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 90),
                    width: 21,
                    height: 14,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 49, left: 96),
                    child:  Text(
                      '\$\$',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 10,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w700,
                        height: 0.12,
                      ),
                    ),
                  ),
                ])
              ]),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40, right: 30, bottom: 8),
                child: const Text(
                  'Diamond Restaurant',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w700,
                    height: 0.06,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 5,
                    ),
                    child: Image.asset('images/Star.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 4),
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
                    margin: EdgeInsets.only(top: 5, left: 2),
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
                    margin: EdgeInsets.only(top: 5, left: 8),
                    width: 1,
                    height: 10,
                    decoration: ShapeDecoration(
                      color: Color(0xFFEAEAEA),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 8),
                    child: const Text(
                      'Western',
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
                    margin: EdgeInsets.only(top: 5, left: 8),
                    width: 1,
                    height: 10,
                    decoration: ShapeDecoration(
                      color: Color(0xFFEAEAEA),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 8),
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
              Row(
                children: [
                  item_4(),
                ],
              )
            ],
          ),
        ],
      )
    ]);
  }
}
