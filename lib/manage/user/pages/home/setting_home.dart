import 'package:car_flutter/manage/user/models/post_user_model.dart';
import 'package:car_flutter/manage/user/pages/home/home_page.dart';
import 'package:car_flutter/manage/user/pages/home/main_home_page.dart';
import 'package:car_flutter/manage/user/pages/home/widget/buttom_setting.dart';
import 'package:car_flutter/manage/user/pages/home/widget/infor_user_card.dart';

import 'package:flutter/material.dart';

class SettingHome extends StatefulWidget {
  const SettingHome({super.key});

  @override
  State<SettingHome> createState() => _SettingHomeState();
}

class _SettingHomeState extends State<SettingHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0)
          .copyWith(top: MediaQuery.of(context).padding.top + 5.0),
      child: Scaffold(
        body: Container(
          color: const Color(0XFF17203A),
          width: 288,
          height: double.infinity,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InforUserCard(
                  name: posts[0].user?.name ?? '',
                  profession: 'Welcom',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'BROWSE',
                    style: TextStyle(fontSize: 20.0, color: Colors.white54),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Divider(
                    thickness: 1,
                    color: Colors.white70,
                  ),
                ),
                ButtomSetting(
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainHomePage()));
                  },
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  title: 'HOME',
                ),
                ButtomSetting(
                  onPress: () {},
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  title: 'Setting',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Divider(
                    thickness: 0.1,
                    height: 0.5,
                  ),
                ),
                ButtomSetting(
                  onPress: () {},
                  icon: const Icon(
                    Icons.card_travel,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  title: 'Cart',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Divider(
                    thickness: 0.1,
                    height: 0.5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
