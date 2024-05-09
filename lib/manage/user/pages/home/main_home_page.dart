import 'package:car_flutter/common/components/app_bar/custom_app_bar.dart';
import 'package:car_flutter/manage/user/pages/home/home_page.dart';
import 'package:flutter/material.dart';

import '../../../../common/navigator/bottomnavbarcurved .dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: IndexedStack(index: currentIndex, children: [
        const HomePage(),
        Container(color: Colors.yellow),
        Container(color: Colors.blue),
        Container(color: Colors.pink),
        Container(color: Colors.blueGrey)
      ]),
      bottomNavigationBar: BottomNavBarCurvedFb1(
        selected: currentIndex,
        onPressed: (p0) {
          setState(() {
            currentIndex = p0;
          });
        },
      ),
    );
  }
}
