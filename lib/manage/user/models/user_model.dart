import 'package:car_flutter/manage/user/models/car_product_model.dart';
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
  CardProductModel? cardProductModel;

  UserModel();
}

UserModel user1 = UserModel()
  ..id = '1'
  ..name = "Chung Aotu"
  ..avatar = 'assets/images/backgrounddone.png'
  ..background = 'assets/images/chungaotu.jpg'
  ..rating = 4.0
  ..review = 56
  ..slogan = '24/7'
  ..location = locationUser2
  ..cardProductModel = cardProductModel1
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
  ..background = 'assets/images/auto_4.jpeg'
  ..rating = 1.0
  ..review = 100
  ..slogan = '24/7'
  ..location = locationUser2
  ..cardProductModel = cardProductModel2
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
  ..background = 'assets/images/auto_5.jpeg'
  ..rating = 2.0
  ..review = 100
  ..slogan = '24/7'
  ..location = locationUser3
  ..cardProductModel = cardProductModel3
  ..openTime = '6:00'
  ..closeTime = '20:00'
  ..phoneNumber = '0123456'
  ..website = 'facebook.com'
  ..tiktok = ''
  ..status = false;

UserModel user4 = UserModel()
  ..id = '4'
  ..name = "Huynh Aotu"
  ..avatar = 'assets/images/iconfacebooklogo.png'
  ..background = 'assets/images/auto_1.jpeg'
  ..rating = 2.0
  ..review = 100
  ..slogan = '24/7'
  ..location = locationUser4
  ..cardProductModel = cardProductModel4
  ..openTime = '6:00'
  ..closeTime = '20:00'
  ..phoneNumber = '0123456'
  ..website = 'facebook.com'
  ..tiktok = ''
  ..status = false;

UserModel user5 = UserModel()
  ..id = '5'
  ..name = "Ngoc Aotu"
  ..avatar = 'assets/images/carrescue10.png'
  ..background = 'assets/images/auto_2.jpeg'
  ..rating = 2.0
  ..review = 100
  ..slogan = '24/7'
  ..location = locationUser5
  ..cardProductModel = cardProductModel5
  ..openTime = '6:00'
  ..closeTime = '20:00'
  ..phoneNumber = '0123456'
  ..website = 'facebook.com'
  ..tiktok = ''
  ..status = false;

UserModel user6 = UserModel()
  ..id = '6'
  ..name = "Vinfast"
  ..avatar = 'assets/images/backgrounddone.png'
  ..background = 'assets/images/auto_3.jpeg'
  ..rating = 2.0
  ..review = 100
  ..slogan = '24/7'
  ..location = locationUser1
  ..cardProductModel = cardProductModel6
  ..openTime = '6:00'
  ..closeTime = '20:00'
  ..phoneNumber = '0123456'
  ..website = 'facebook.com'
  ..tiktok = ''
  ..status = false;
