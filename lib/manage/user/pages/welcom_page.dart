import 'package:car_flutter/common/components/button/app_elevated_buttom.dart';
import 'package:car_flutter/manage/user/pages/auth/login/login_page.dart';
import 'package:flutter/material.dart';

import 'auth/login/register_page.dart';

class WelcomPage extends StatelessWidget {
  const WelcomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0).copyWith(
            top: MediaQuery.of(context).padding.top + 10.0, bottom: 30.0),
        child: Column(
          children: [
            const Spacer(),
            Image.asset('assets/images/Autocarlogo.png'),
            const SizedBox(
              height: 40.0,
            ),
            Text(
              'Car rescue ',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 40.0,
                  fontWeight: FontWeight.w500),
            ),
            const Text(
              'Car rescue is always with you 24/7,\n Coming to every corner to help.',
              style: TextStyle(
                  color: Colors.black26,
                  fontSize: 16.8,
                  fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: AppElevatedButton.smallOutline(
                borderRadius: BorderRadius.circular(30.0),
                height: 50.0,
                text: 'Login',
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: AppElevatedButton.smallOutline(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                textColor: const Color(0XFFFC6011),
                height: 50.0,
                text: 'Create an Account',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
