import 'package:car_flutter/manage/user/models/location_model.dart';
import 'package:car_flutter/manage/user/models/user_model.dart';

class PostModel {
  String? id;
  UserModel? user;
  double? rate;
  LocationModel? location;
  String? description;
  List<String>? image;
  int current = 0;

  PostModel();
}

List<PostModel> posts = [
  PostModel()
    ..id = '1'
    ..user = user1
    ..rate = 5.0
    ..location = locationUser1
    ..description =
        'Excepteur a mollis exercitationem. Primis beatae! Quis quos optio montes justo quasi dapibus. Iusto blandit mattis et vitae optio quas nec tellus.'
    ..image = [
      'assets/images/chungaotu.jpg',
    ],
  PostModel()
    ..id = '2'
    ..user = user2
    ..rate = 4.0
    ..location = locationUser2
    ..description =
        'Excepteur a mollis exercitationem. Primis beatae! Quis quos optio montes justo quasi dapibus. Iusto blandit mattis et vitae optio quas nec tellus.'
    ..image = [
      'assets/images/chungaotu.jpg',
      'assets/images/chungaotu.jpg',
      'assets/images/chungaotu.jpg',
      'assets/images/chungaotu.jpg',
      'assets/images/chungaotu.jpg',
    ],
  PostModel()
    ..id = '3'
    ..user = user3
    ..rate = 4.0
    ..location = locationUser1
    ..description =
        'Excepteur a mollis exercitationem. Primis beatae! Quis quos optio montes justo quasi dapibus. Iusto blandit mattis et vitae optio quas nec tellus.'
    ..image = [
      'assets/images/chungaotu.jpg',
      'assets/images/chungaotu.jpg',
      'assets/images/chungaotu.jpg',
      'assets/images/chungaotu.jpg',
      'assets/images/chungaotu.jpg',
    ],
  PostModel()
    ..id = '4'
    ..user = user4
    ..rate = 5.0
    ..location = locationUser1
    ..description =
        'Excepteur a mollis exercitationem. Primis beatae! Quis quos optio montes justo quasi dapibus. Iusto blandit mattis et vitae optio quas nec tellus.'
    ..image = [
      'assets/images/chungaotu.jpg',
      'assets/images/chungaotu.jpg',
      'assets/images/chungaotu.jpg',
      'assets/images/chungaotu.jpg',
      'assets/images/chungaotu.jpg',
    ],
  PostModel()
    ..id = '5'
    ..user = user5
    ..rate = 4.0
    ..location = locationUser2
    ..description =
        'Excepteur a mollis exercitationem. Primis beatae! Quis quos optio montes justo quasi dapibus. Iusto blandit mattis et vitae optio quas nec tellus.'
    ..image = [
      'assets/images/chungaotu.jpg',
      'assets/images/chungaotu.jpg',
      'assets/images/chungaotu.jpg',
      'assets/images/chungaotu.jpg',
      'assets/images/chungaotu.jpg',
    ],
  PostModel()
    ..id = '6'
    ..user = user6
    ..rate = 4.0
    ..location = locationUser1
    ..description =
        'Excepteur a mollis exercitationem. Primis beatae! Quis quos optio montes justo quasi dapibus. Iusto blandit mattis et vitae optio quas nec tellus.'
    ..image = [
      'assets/images/chungaotu.jpg',
      'assets/images/chungaotu.jpg',
      'assets/images/chungaotu.jpg',
      'assets/images/chungaotu.jpg',
      'assets/images/chungaotu.jpg',
    ],
];
