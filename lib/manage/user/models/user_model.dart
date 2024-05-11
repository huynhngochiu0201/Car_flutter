// import 'package:car_flutter/manage/user/models/location_model.dart';

// class UserModel {
//   String? name;
//   String? avatar;
//   String? slogan;
//   bool? liked;
//   double? rating;
//   int? review;
//   String? description;
//   String? openTime;
//   String? closeTime;
//   String? phoneNumber;
//   bool? status;
//   LocationModel? location;
//   UserModel();
// }

// UserModel user1 = UserModel()
//   ..name = 'hello'
//   ..avatar = 'assets/images/carrescue1.png'
//   ..slogan = 'dasd'
//   ..liked = true
//   ..rating = 5
//   ..review = 10
//   ..description = 'asd'
//   ..openTime = '24/7'
//   ..closeTime = '24/7'
//   ..phoneNumber = '0948586372'
//   ..status = true;

// UserModel user2 = UserModel()
//   ..name = 'hello'
//   ..avatar = 'assets/images/carrescue1.png'
//   ..slogan = 'dasd'
//   ..liked = true
//   ..rating = 5
//   ..review = 10
//   ..description = 'asd'
//   ..openTime = '211'
//   ..closeTime = '2323'
//   ..phoneNumber = '2322'
//   ..status = true;

// UserModel user3 = UserModel()
//   ..name = 'hello'
//   ..avatar = 'assets/images/carrescue1.png'
//   ..slogan = 'dasd'
//   ..liked = true
//   ..rating = 5
//   ..review = 10
//   ..description = 'asd'
//   ..openTime = '211'
//   ..closeTime = '2323'
//   ..phoneNumber = '2322'
//   ..status = true;
// UserModel user4 = UserModel()
//   ..name = 'hello'
//   ..avatar = 'assets/images/carrescue1.png'
//   ..slogan = 'dasd'
//   ..liked = true
//   ..rating = 5
//   ..review = 10
//   ..description = 'asd'
//   ..openTime = '211'
//   ..closeTime = '2323'
//   ..phoneNumber = '2322'
//   ..status = true;

// UserModel user5 = UserModel()
//   ..name = 'hello'
//   ..avatar = 'assets/images/carrescue1.png'
//   ..slogan = 'dasd'
//   ..liked = true
//   ..rating = 5
//   ..review = 10
//   ..description = 'asd'
//   ..openTime = '211'
//   ..closeTime = '2323'
//   ..phoneNumber = '2322'
//   ..status = true;

// UserModel user6 = UserModel()
//   ..name = 'hello'
//   ..avatar = 'assets/images/carrescue1.png'
//   ..slogan = 'dasd'
//   ..liked = true
//   ..rating = 5
//   ..review = 10
//   ..description = 'asd'
//   ..openTime = '211'
//   ..closeTime = '2323'
//   ..phoneNumber = '2322'
//   ..status = true;

import 'package:car_flutter/manage/user/models/location_model.dart';

class UserModel {
  String? id;
  String? name;
  String? avatar;
  String? couverture;
  bool? liked;
  bool? favourite;
  double? rate;
  int? priceRange;
  int? review;
  int? follower;
  int? following;
  String? description;
  LocationModel? location;
  String? openTime;
  String? closeTime;
  String? phoneNumber;
  String? website;
  bool? status;

  UserModel();
}

UserModel user1 = UserModel()
  ..id = '1'
  ..name = "Huy01"
  ..avatar = 'assets/images/avt1.jpg'
  ..couverture =
      'https://cdn.pixabay.com/photo/2023/07/26/16/43/food-8151625_640.jpg'
  ..liked = true
  ..favourite = true
  ..rate = 4.0
  ..priceRange = 3
  ..review = 56
  ..follower = 100
  ..following = 72
  ..description = 'aaaaaaaaaaaaa'
  ..location = locationUser1
  ..openTime = '6:00'
  ..closeTime = '20:00'
  ..phoneNumber = '0123456'
  ..website = 'facebook.com'
  ..status = true;

UserModel user2 = UserModel()
  ..id = '2'
  ..name = "Huy02"
  ..avatar = 'assets/images/avt2.jpg'
  ..couverture =
      'https://cdn.pixabay.com/photo/2023/07/26/16/43/food-8151625_640.jpg'
  ..liked = true
  ..favourite = true
  ..rate = 1.0
  ..priceRange = 3
  ..review = 100
  ..follower = 100
  ..following = 100
  ..description = 'aaaaaaaaaaaaa'
  ..location = locationUser2
  ..openTime = '6:00'
  ..closeTime = '20:00'
  ..phoneNumber = '0123456'
  ..website = 'facebook.com'
  ..status = true;

UserModel user3 = UserModel()
  ..id = '3'
  ..name = "Huy04"
  ..avatar = 'assets/images/avt4.jpg'
  ..couverture =
      'https://cdn.pixabay.com/photo/2023/07/26/16/43/food-8151625_640.jpg'
  ..liked = true
  ..favourite = true
  ..rate = 2.0
  ..priceRange = 1
  ..review = 100
  ..follower = 100
  ..following = 100
  ..description = 'aaaaaaaaaaaaa'
  ..location = locationUser1
  ..openTime = '6:00'
  ..closeTime = '20:00'
  ..phoneNumber = '0123456'
  ..website = 'facebook.com'
  ..status = false;
