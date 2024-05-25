class OnBoardingPageModel {
  String? text;
  String? title;
  String? image;
}

List<OnBoardingPageModel> onboarding = [
  OnBoardingPageModel()
    ..title = 'Need is there'
    ..image = 'assets/images/carrescue1.png'
    ..text = '24/7 online service',
  OnBoardingPageModel()
    ..title = 'Fast'
    ..image = 'assets/images/carrescue9.png'
    ..text = 'Helps users quickly find repairman',
  OnBoardingPageModel()
    ..title = 'Prices are uniform'
    ..image = 'assets/images/carrescue2.png'
    ..text = "Don't worry about the price Transparent prices ",
];
