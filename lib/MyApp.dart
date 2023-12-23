import 'package:flutter/material.dart';
import 'package:untitled2/components/Footer/button.dart';
import 'package:untitled2/components/Header/app_bar.dart';
import 'package:untitled2/pages/App/Home/Book.dart';
import 'package:untitled2/pages/App/Home/Browse.dart';
import 'package:untitled2/pages/App/Home/Delivery.dart';
import 'package:untitled2/pages/App/Home/Take_Away.dart';

/// Flutter code sample for [AppBar].

List<String> titles = <String>[
  'Take Away',
  'Delivery',
  'Book',
  'Browse',
];



class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

          cardColor:Color(0xFF4C95FF),

      ),

      home: const AppBarExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    // final ColorScheme colorScheme = Theme.of(context).colorScheme;
    // final Color oddItemColor = colorScheme.primary.withOpacity(0.15);
    // final Color evenItemColor = colorScheme.primary.withOpacity(0.15);
    const int tabsCount = 4;

    return DefaultTabController(
      initialIndex: 0,
      length: tabsCount,
      child: Scaffold(
        appBar: AppBar(
          title:const app_bar(),
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 1;
          },

          scrolledUnderElevation: 4.0,
          // shadowColor: Theme.of(context).primaryColor,
          bottom: TabBar(

            indicator: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            labelColor: Color(0xFF4C95FF),
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: <Widget>[
              Tab(
                // icon: const Icon(Icons.cloud_outlined),

                text: titles[0],
              ),
              Tab(
                // icon: const Icon(Icons.beach_access_sharp),
                text: titles[1],
              ),
              Tab(
                // icon: const Icon(Icons.brightness_5_sharp),
                text: titles[2],
              ),
              Tab(
                // icon: const Icon(Icons.brightness_5_sharp),
                text: titles[3],
              ),
            ],
          ),
        ),
        body: Center(
          child: Container(
            child: TabBarView(
              children: <Widget>[

                Take_Away(),
                Delivery(),
                Book(),
                Browse(),
              ],

            ),
          ),

        ),

      ),
    );
  }
}
