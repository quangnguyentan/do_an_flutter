import 'package:flutter/material.dart';
import 'package:untitled2/components/Cards/card_12.dart';

import '../../../components/Cards/card.dart';
import '../../../components/Cards/card_13.dart';
import '../../../components/Cards/card_2.dart';
import '../../../components/Cards/card_3.dart';
import '../../../components/Cards/card_4.dart';
import '../../../components/Cards/card_5.dart';
import '../../../components/Cards/card_6.dart';

class Browse extends StatefulWidget {
  const Browse({super.key});

  @override
  State<Browse> createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Flex(
      direction: Axis.vertical,
      // mainAxisSize: MainAxisSize.max,
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: card_12(), flex: 1),
        Expanded(
          child: card(),
          flex: 4,
        ),
        Expanded(
          child: card_5(),
          flex: 4,
        )
      ],
    ));
  }
}
