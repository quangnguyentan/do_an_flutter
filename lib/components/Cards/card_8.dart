import 'package:flutter/material.dart';
import 'package:untitled2/components/Items/item_1.dart';
class card_8 extends StatefulWidget {
  const card_8({super.key});

  @override
  State<card_8> createState() => _card_8State();
}

class _card_8State extends State<card_8> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
      Column(
        children: [
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
                  'https://vcdn1-ngoisao.vnecdn.net/2023/06/29/chuong-nhuoc-nam8-7328-1688011799.jpg?w=460&h=0&q=100&dpr=1&fit=crop&s=s9jJubK52gQHg1B6NCvjHw',
                  fit: BoxFit.cover,
                  alignment: Alignment.topLeft,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                item_1(),
                Column(
                  children: [
                    Stack(children: [
                      Container(
                        margin: EdgeInsets.only(top: 16,left: 100 ),
                        width: 28,
                        height: 14,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(2)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 26, left: 107),
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
                    margin:
                    EdgeInsets.only(top: 151, left: 224),
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
        ],
      ),
      Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 164, left: 28),
            child: const Text(
              'Toronto Restaurant',
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
                        margin:
                        EdgeInsets.only(top: 196, left: 28),
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
                        margin:
                        EdgeInsets.only(top: 196, left: 8),
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
              )
            ],
          ),
        ],
      )
    ]);
  }
}
