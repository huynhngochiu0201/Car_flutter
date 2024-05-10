import 'package:car_flutter/manage/user/models/location_model.dart';
import 'package:car_flutter/manage/user/models/user_model.dart';

class PostUserModel {
  UserModel? user;
  String? title;
  String? description;
  LocationModel? locationModel;
  List<String>? images;

  PostUserModel();
}

List<PostUserModel> posts = [
  PostUserModel()
    ..user = user1
    ..title = 'sadas'
    ..images = [
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
    ],
  PostUserModel()
    ..user = user2
    ..title = 'sadas'
    ..images = [
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
    ],
  PostUserModel()
    ..user = user3
    ..title = 'sadas'
    ..images = [
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
    ],
  PostUserModel()
    ..user = user4
    ..title = 'sadas'
    ..images = [
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
    ],
  PostUserModel()
    ..user = user5
    ..title = 'sadas'
    ..images = [
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
    ],
  PostUserModel()
    ..user = user6
    ..title = 'sadas'
    ..images = [
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
      'assets/images/carrescue1.png',
    ]
];
