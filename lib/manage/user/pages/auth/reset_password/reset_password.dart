import 'package:car_flutter/common/components/button/app_elevated_buttom.dart';
import 'package:car_flutter/common/components/text_field/app_text_field.dart';
import 'package:car_flutter/manage/user/pages/auth/reset_password/otp_password.dart';

import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
              'Reset Password',
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
              'Please enter your email to receive a link to create a new password via emall',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black26,
                  fontSize: 16.8,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 40.0),
            AppTextField(
              hintText: 'Email',
              controller: restemailController,
            ),
            const SizedBox(height: 20.0),
            AppElevatedButton(
              text: 'Send',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OtpPassword()));
              },
            )
          ],
        ),
      ),
    );
  }
}
