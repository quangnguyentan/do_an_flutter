import 'package:flutter/material.dart';
import 'package:untitled2/components/Items/item_1.dart';
class card_6 extends StatefulWidget {
  const card_6({super.key});

  @override
  State<card_6> createState() => _card_6State();
}

class _card_6State extends State<card_6> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 30),
        width: 363,
        height: 296,
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
              width: 360,
              height: 178,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.network(
                  'https://images2.thanhnien.vn/528068263637045248/2023/4/3/1-16804983197871531700578.jpg',
                  fit: BoxFit.cover,
                  alignment: Alignment.topLeft,
                ),
              ),
            ),
            Column(
              children: [
                Stack(children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 165,
                      left: 315,
                    ),
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFF4C95FF)),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 183,
                      left: 323,
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
                    margin: EdgeInsets.only(top: 192, left: 328),
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
            margin: EdgeInsets.only(top: 203, left: 28),
            child: const Text(
              'Magic Dessert',
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
                margin: EdgeInsets.only(top: 214, left: 28),
                child: Image.asset('images/Star.png'),
              ),
              Container(
                margin: EdgeInsets.only(top: 214, left: 4),
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
                margin: EdgeInsets.only(top: 214, left: 2),
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
                margin: EdgeInsets.only(top: 214, left: 8),
                width: 1,
                height: 10,
                decoration: ShapeDecoration(
                  color: Color(0xFFEAEAEA),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 214, left: 8),
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
                margin: EdgeInsets.only(top: 214, left: 8),
                width: 1,
                height: 10,
                decoration: ShapeDecoration(
                  color: Color(0xFFEAEAEA),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 214, left: 8),
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
      Row(
        children: [
          Column(
            children: [
              Stack(children: [
                Opacity(
                  opacity: 0.10,
                  child: Container(
                    margin: EdgeInsets.only(top: 234, left: 28),
                    width: 62,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFF86CC7A),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 238, left: 36),
                      child: Text(
                        'City',
                        style: TextStyle(
                          color: Color(0xFF86CC7A),
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w600,
                          height: 0.08,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 238, left: 8),
                      child: Image.asset('images/icon_City_14x14.png'),
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
                    margin: EdgeInsets.only(top: 234, left: 8),
                    width: 100,
                    height: 24,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF8B147),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 238, left: 16),
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
                      margin: EdgeInsets.only(top: 238, left: 8),
                      child: Image.asset(
                          'images/icon_Take_away_14x14.png'),
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
                    margin: EdgeInsets.only(top: 234, left: 8),
                    width: 68,
                    height: 24,
                    decoration: ShapeDecoration(
                      color: Color(0xFFA68BEA),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 238, left: 16),
                      child: const Text(
                        'Book',
                        style: TextStyle(
                          color: Color(0xFFA68BEA),
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w600,
                          height: 0.08,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 238, left: 8),
                      child: Image.asset('images/icon_book_14x14.png'),
                    )
                  ],
                )
              ]),
            ],
          )
        ],
      ),
      Column(
        children: [
          Stack(children: [
            Opacity(
              opacity: 0.10,
              child: Container(
                margin: EdgeInsets.only(top: 266, left: 28),
                width: 160,
                height: 24,
                decoration: ShapeDecoration(
                  color: Color(0xFFFF5D5D),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 269, left: 38),
                  child: const Text(
                    'Tasting Voucher \$50',
                    style: TextStyle(
                      color: Color(0xFFFF5D5D),
                      fontSize: 14,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w600,
                      height: 0.08,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 269, left: 8),
                  child: Image.asset('images/sale.png'),
                )
              ],
            )
          ]),
        ],
      ),
    ]);
  }
}
