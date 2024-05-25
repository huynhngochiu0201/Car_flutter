import 'package:car_flutter/common/components/button/app_elevated_buttom.dart';
import 'package:car_flutter/manage/user/models/seting/onboarding_page_model.dart';
import 'package:car_flutter/manage/user/pages/auth/login/login_page.dart';
import 'package:car_flutter/manage/user/pages/welcom_page.dart';
import 'package:flutter/material.dart';

import '../widget/onboardnavbtn.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentPage = 0;

  final PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 5),
      duration: const Duration(milliseconds: 400),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.orange : Colors.black26,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0)
            .copyWith(top: MediaQuery.of(context).padding.top + 10.0),
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onboarding.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    const Text(
                      textAlign: TextAlign.center,
                      'WELCOME TO \n THE AUTO RESCUE SERVICE',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                    Container(
                      height: size.height / 2.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(onboarding[index].image ?? '-.-'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      onboarding[index].title ?? '-.-',
                      style: const TextStyle(
                          fontSize: 24.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      onboarding[index].text ?? '-.-',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    currentPage == onboarding.length - 1
                        ? AppElevatedButton(
                            text: 'Get Started',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            })
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              OnBoardNavBtn(
                                name: 'Skip',
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const WelcomPage()));
                                },
                              ),
                              Row(
                                children: List.generate(
                                  onboarding.length,
                                  (index) => dotIndicator(index),
                                ),
                              ),
                              OnBoardNavBtn(
                                name: 'Next',
                                onPressed: () {
                                  _pageController.nextPage(
                                    duration: const Duration(milliseconds: 400),
                                    curve: Curves.easeInOut,
                                  );
                                },
                              ),
                            ],
                          ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
