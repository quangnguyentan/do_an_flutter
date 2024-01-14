import 'package:flutter/material.dart';
import 'package:untitled2/MyApp.dart';
import 'package:untitled2/components/Cards/card_11.dart';
import 'package:untitled2/pages/Splash/splash_basehall.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:untitled2/components/Footer/button.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBltBDuGxwB86zTc6Fnh_IH0sbcGKEXuys",
          appId: "1:1001191778300:ios:ac847c115880707e26f479",
          messagingSenderId: "1001191778300",
          projectId: "loginflutter-beb92"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: button(),
    );
  }
}
