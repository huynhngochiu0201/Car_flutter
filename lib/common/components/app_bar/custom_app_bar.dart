import 'package:car_flutter/manage/user/pages/home/widget/menu/setting_home.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(66.0);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0).copyWith(
        top: MediaQuery.of(context).padding.top + 10.0,
      ),
      child: SizedBox(
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingHome()));
              },
              child: const CircleAvatar(
                  backgroundColor: Color(0xFFEBEDEF), child: Icon(Icons.menu)),
            ),
            const SizedBox(width: 10.0),
            Image.asset(
              'assets/images/Autocarlogo.png',
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: const CircleAvatar(
                backgroundColor: Color(0xFFEBEDEF),
                child: Icon(
                  Icons.search,
                  size: 30.0,
                ),
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: const Color(0xFFEBEDEF),
                child: Image.asset(
                  'assets/images/icons8message.png',
                  fit: BoxFit.cover,
                  width: 25.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
