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
    //padding: const EdgeInsets.symmetric(horizontal: 20.0).copyWith(
    // top: MediaQuery.of(context).padding.top + 10.0, bottom: 20.0),
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0).copyWith(
        top: MediaQuery.of(context).padding.top + 10.0,
      ),
      child: SizedBox(
        child: Row(
          children: [
            Image.asset(
              'assets/images/Autocarlogo.png',
            ),
            const Spacer(),
            const Icon(
              Icons.search,
              size: 35.0,
            )
          ],
        ),
      ),
    );
  }
}
