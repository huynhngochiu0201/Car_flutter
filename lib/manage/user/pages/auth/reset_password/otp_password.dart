import 'package:car_flutter/common/components/button/app_elevated_buttom.dart';
import 'package:car_flutter/manage/user/pages/auth/reset_password/new_password.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpPassword extends StatefulWidget {
  const OtpPassword({super.key});

  @override
  State<OtpPassword> createState() => _OtpPasswordState();
}

class _OtpPasswordState extends State<OtpPassword> {
  TextEditingController textEditingController = TextEditingController();

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
              'We have sent an OTP to your Mobile',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Please check your mobile number 09*******72\ncontinue to reset your password',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: PinCodeTextField(
                appContext: context,
                length: 4, // Số lượng ô nhập
                obscureText: true, // Hiện kí tự hoặc không
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  inactiveFillColor: Colors.grey,
                  // activeFillColor: Colors.black,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 60,
                  fieldWidth: 50,
                  inactiveColor: Colors.grey,
                  activeColor: Colors.black,
                  selectedColor: Colors.blue,
                ),
                animationDuration: const Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                enableActiveFill: true,
                controller: textEditingController,
                onChanged: (value) {},
                onCompleted: (value) {
                  // Xử lý khi nhập đầy đủ OTP
                },
              ),
            ),
            const SizedBox(height: 20.0),
            AppElevatedButton(
              text: 'Next',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NewPassword()));
              },
            ),
            const SizedBox(height: 30.0),
            Center(
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Didn't Receive?",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: ' Click Here',
                      style: TextStyle(
                          color: Color(0XFFFC6011),
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
