import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/welcome-screen.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
      /*
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => WelcomeScreen()),
      ],
      */
    );
  }
}
