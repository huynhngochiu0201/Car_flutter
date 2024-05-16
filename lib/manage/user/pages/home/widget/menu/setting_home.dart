import 'package:car_flutter/manage/user/models/post_user_model.dart';
import 'package:flutter/material.dart';
import '../../../../models/menu_items_model.dart';
import '../../main_home_page.dart';

class SettingHome extends StatelessWidget {
  SettingHome({super.key});

  final List<Widget> pages = [
    const MainHomePage(),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.cyan,
    ),
    Container(
      color: Colors.red,
    ),
  ];

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
          const Text('WelComs trả về gmail'),
          Text(
            posts[0].user?.name ?? '',
            style: const TextStyle(color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            width: double.infinity,
            height: 300,
            child: ListView.builder(
              itemCount: MenuItemsModel.icons.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => pages[index]),
                    );
                  },
                  leading: Icon(
                    MenuItemsModel.icons[index],
                    size: 30.0,
                    color: Colors.white,
                  ),
                  title: Text(
                    MenuItemsModel.texts[index],
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
