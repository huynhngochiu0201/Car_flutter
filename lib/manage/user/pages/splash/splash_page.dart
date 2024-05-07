import 'dart:async';
import 'package:car_flutter/manage/user/pages/auth/login/login_page.dart';
import 'package:flutter/material.dart';

import '../../../../services/local/shared_prefs_onboarding.dart';
import 'onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late SharedPrefsOnboarding prefs;
  bool? seenOnboard;

  @override
  void initState() {
    super.initState();
    // Khởi tạo SharedPreferences
    prefs = SharedPrefsOnboarding();
    // Kiểm tra xem đã xem onboarding hay chưa
    checkOnboardingStatus();
  }

  // Hàm kiểm tra trạng thái của onboarding
  Future<void> checkOnboardingStatus() async {
    seenOnboard = await prefs.getSeenOnboard();
    // Nếu đã xem onboarding, chuyển đến màn hình tiếp theo
    if (seenOnboard != null && seenOnboard!) {
      navigateToNextScreen();
    } else {
      // Nếu chưa xem onboarding, hiển thị trang onboarding và lưu lại trạng thái đã xem
      await prefs.saveSeenOnboard(true);
      Timer(const Duration(milliseconds: 2000), () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const OnBoardingPage(),
          ),
          (Route<dynamic> route) => false,
        );
      });
    }
  }

  // Hàm chuyển đến màn hình tiếp theo
  void navigateToNextScreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
          ),
        ),
        child: Image.asset(
          'assets/images/Autocarlogo.png',
          width: 120.0,
        ),
      ),
    );
  }
}
