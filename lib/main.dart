import 'package:car_flutter/manage/user/pages/splash/splash_page.dart';

import 'package:flutter/material.dart';

bool? seenOnboard;
void main() async {
  // SharedPreferences pref = await SharedPreferences.getInstance();
  // seenOnboard = pref.getBool('seenOnboard') ?? true;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
