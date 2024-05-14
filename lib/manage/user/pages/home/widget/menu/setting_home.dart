import 'package:car_flutter/manage/user/models/post_user_model.dart';
import 'package:flutter/material.dart';

class SettingHome extends StatelessWidget {
  const SettingHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 90.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0XFF4568DC), Color(0XFFB06AB3)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Column(
        children: [
          const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/Autocarlogo.png')),
          const SizedBox(height: 10.0),
          Text(posts[0].user?.name ?? ''),
        ],
      ),
    );
  }
}
