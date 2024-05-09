import 'package:car_flutter/manage/user/models/user_model.dart';

class PostUserModel {
  UserModel? user;
  String? cuisineType;
  String? description;
  List<String>? images;

  PostUserModel();
}

List<PostUserModel> posts = [
  PostUserModel()
    ..user = user1
    ..cuisineType = 'sadas'
    ..cuisineType = 'asdad'
    ..images = [
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
    ],
  PostUserModel()
    ..user = user2
    ..cuisineType = 'sadas'
    ..cuisineType = 'asdad'
    ..images = [
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
    ],
  PostUserModel()
    ..user = user3
    ..cuisineType = 'sadas'
    ..cuisineType = 'asdad'
    ..images = [
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
    ],
  PostUserModel()
    ..user = user4
    ..cuisineType = 'sadas'
    ..cuisineType = 'asdad'
    ..images = [
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
    ],
  PostUserModel()
    ..user = user5
    ..cuisineType = 'sadas'
    ..cuisineType = 'asdad'
    ..images = [
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
    ]
];
