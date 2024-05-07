import 'package:car_flutter/manage/user/pages/welcom_page.dart';
import 'package:flutter/material.dart';

import '../../../../../common/components/button/app_elevated_buttom.dart';
import '../../../../../common/components/text_field/app_text_field.dart';
import '../../../../../common/components/text_field/app_text_field_password.dart';
import '../reset_password/reset_password.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20.0).copyWith(
                    top: MediaQuery.of(context).padding.top + 20, bottom: 20.0),
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w900),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4.0),
                  const Text(
                    'Add your details to login',
                    style: TextStyle(color: Colors.grey, fontSize: 18.0),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30.0),
                  AppTextField(
                    controller: emailController,
                    hintText: 'Email or Phone',
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 25.0),
                  AppTextFieldPassword(
                    controller: passwordController,
                    hintText: 'Password',
                    textInputAction: TextInputAction.done,
                  ),
                  const SizedBox(height: 25.0),
                  AppElevatedButton(
                    onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => const WelcomPage()),
                      (Route<dynamic> route) => false,
                    ),
                    text: 'Login',
                  ),
                  const SizedBox(height: 25.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResetPassword()));
                    },
                    child: const Text(
                      'Forgot your Password?',
                      style: TextStyle(
                          color: Color(0XFF7C7D7E),
                          fontSize: 14.8,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  const Text(
                    'or Login With',
                    style: TextStyle(
                        color: Color(0XFF7C7D7E),
                        fontSize: 14.8,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const AppElevatedButton(
                    text: 'Login with Facebook',
                    color: Color(0XFF3B5998),
                    borderColor: Color(0XFF3B5998),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  const AppElevatedButton(
                    text: 'Login with Google',
                    color: Color.fromARGB(255, 182, 44, 16),
                    borderColor: Color.fromARGB(255, 182, 44, 16),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account, ',
                    style: TextStyle(color: Colors.grey, fontSize: 16.8),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    ),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(color: Colors.red, fontSize: 16.8),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
