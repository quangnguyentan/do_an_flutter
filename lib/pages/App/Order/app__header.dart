import 'package:flutter/material.dart';

class app__header extends StatefulWidget {
  const app__header({super.key});

  @override
  State<app__header> createState() => _app__headerState();
}

class _app__headerState extends State<app__header> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width:400,
        height: 40,
        color: Color(0xFF4C95FF),
      ),
    );
  }
}


