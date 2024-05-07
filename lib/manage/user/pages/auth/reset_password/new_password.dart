import 'package:car_flutter/common/components/button/app_elevated_buttom.dart';
import 'package:car_flutter/common/components/text_field/app_text_field.dart';

import 'package:flutter/material.dart';

import '../../splash/onboarding_page.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  TextEditingController restemailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0).copyWith(
              top: MediaQuery.of(context).padding.top + 20, bottom: 20.0),
          children: [
            const Text(
              'New Password',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 24.0,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Please enter your email to receive a link to create a new password via email',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black26,
                  fontSize: 16.8,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 40.0),
            AppTextField(
              hintText: 'New Password',
              controller: restemailController,
            ),
            const SizedBox(height: 20.0),
            AppTextField(
              hintText: 'Confirm Password',
              controller: restemailController,
            ),
            const SizedBox(height: 20.0),
            AppElevatedButton(
              text: 'Next',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OnBoardingPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
