import 'package:flutter/material.dart';
import 'package:untitled2/MyApp.dart';
import 'package:untitled2/pages/App/Home/Take_Away.dart';
import 'package:untitled2/pages/App/Order/order.dart';
import 'package:untitled2/pages/App/Person/person.dart';
import 'package:untitled2/pages/themes/app_color.dart';

class button extends StatefulWidget {
  const button({super.key});

  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  bool _isBottomNavigationBarVisible = true;
  int _currentIndex = 0;
  final tabs = [
    // Take_Away()
    AppBarApp(),
    order(),
    person()
  ];
  @override
  void didChangeDependencies() {
    // Check if the bottom navigation bar should be visible.
    if (_isBottomNavigationBarVisible) {
      // Set the state to show the bottom navigation bar.
      setState(() {
        _isBottomNavigationBarVisible = true;
      });
    } else {
      // Set the state to hide the bottom navigation bar.
      setState(() {
        _isBottomNavigationBarVisible = false;
      });
    }
    super.didChangeDependencies();
  }

  // final _home_tours = home_tours();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        elevation: 10,
        iconSize: 20,
        selectedFontSize: 10,
        selectedIconTheme: const IconThemeData(
          color: Colors.red,
        ),
        selectedItemColor: const Color(0xFF4C95FF),
        selectedLabelStyle: const TextStyle(fontSize: 15),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
              color: Color(0xFF4C95FF),
            ),

            // labelColor: Colors.green,
            label: 'Home',
            // selectedLabelStyle: TextStyle(color: Colors.green),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment,
              color: Color(0xFF4C95FF),
            ),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xFF4C95FF),
            ),
            label: 'Person',
          ),
        ],
        onTap: (i) {
          setState(() {
            _currentIndex = i;
          });
        },
      ),
      body: tabs[_currentIndex],
    );
  }
}
