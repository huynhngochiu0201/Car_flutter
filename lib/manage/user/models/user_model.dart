import 'package:car_flutter/manage/user/models/location_model.dart';

class UserModel {
  String? id;
  String? name;
  String? avatar;
  String? background;
  double? rating;
  int? review;
  String? slogan;
  LocationModel? location;
  String? openTime;
  String? closeTime;
  String? phoneNumber;
  String? website;
  String? tiktok;
  bool? status;

  UserModel();
}

UserModel user1 = UserModel()
  ..id = '1'
  ..name = "Chung Aotu"
  ..avatar = 'assets/images/backgrounddone.png'
  ..background = 'assets/images/chung aotu.jpeg'
  ..rating = 4.0
  ..review = 56
  ..slogan = '24/7'
  ..location = locationUser1
  ..openTime = '6:00'
  ..closeTime = '20:00'
  ..phoneNumber = '0123456'
  ..website = 'facebook.com'
  ..tiktok = ''
  ..status = true;

UserModel user2 = UserModel()
  ..id = '2'
  ..name = "Hiếu Aotu"
  ..avatar = 'assets/images/iconfacebooklogo.png'
  ..background = 'assets/images/chung aotu.jpeg'
  ..rating = 1.0
  ..review = 100
  ..slogan = '24/7'
  ..location = locationUser2
  ..openTime = '6:00'
  ..closeTime = '20:00'
  ..phoneNumber = '0123456'
  ..website = 'facebook.com'
  ..tiktok = ''
  ..status = true;

UserModel user3 = UserModel()
  ..id = '3'
  ..name = "Hiu Huynh Aotu"
  ..avatar = 'assets/images/backgrounddone.png'
  ..background = 'assets/images/chung aotu.jpeg'
  ..rating = 2.0
  ..review = 100
  ..slogan = '24/7'
  ..location = locationUser3
  ..openTime = '6:00'
  ..closeTime = '20:00'
  ..phoneNumber = '0123456'
  ..website = 'facebook.com'
  ..tiktok = ''
  ..status = false;

UserModel user4 = UserModel()
  ..id = '3'
  ..name = "Huynh Aotu"
  ..avatar = 'assets/images/iconfacebooklogo.png'
  ..background = 'assets/images/chung aotu.jpeg'
  ..rating = 2.0
  ..review = 100
  ..slogan = '24/7'
  ..location = locationUser4
  ..openTime = '6:00'
  ..closeTime = '20:00'
  ..phoneNumber = '0123456'
  ..website = 'facebook.com'
  ..tiktok = ''
  ..status = false;

UserModel user5 = UserModel()
  ..id = '3'
  ..name = "Ngoc Aotu"
  ..avatar = 'assets/images/carrescue10.png'
  ..background = 'assets/images/chung aotu.jpeg'
  ..rating = 2.0
  ..review = 100
  ..slogan = '24/7'
  ..location = locationUser5
  ..openTime = '6:00'
  ..closeTime = '20:00'
  ..phoneNumber = '0123456'
  ..website = 'facebook.com'
  ..tiktok = ''
  ..status = false;

UserModel user6 = UserModel()
  ..id = '3'
  ..name = "Vinfast"
  ..avatar = 'assets/images/backgrounddone.png'
  ..background = 'assets/images/chung aotu.jpeg'
  ..rating = 2.0
  ..review = 100
  ..slogan = '24/7'
  ..location = locationUser1
  ..openTime = '6:00'
  ..closeTime = '20:00'
  ..phoneNumber = '0123456'
  ..website = 'facebook.com'
  ..tiktok = ''
  ..status = false;
