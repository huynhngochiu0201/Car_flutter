import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key, required this.drawerKey});

  final GlobalKey<SliderDrawerState> drawerKey;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool isDrawerOpen = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onDrawerToggle() {
    setState(() {
      isDrawerOpen = !isDrawerOpen;
      if (isDrawerOpen) {
        widget.drawerKey.currentState!.openSlider();
        _controller.forward();
      } else {
        _controller.reverse();
        widget.drawerKey.currentState!.closeSlider();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0)
          .copyWith(top: MediaQuery.of(context).padding.top + 10.0),
      child: SizedBox(
        height: 60.0,
        width: double.infinity,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: IconButton(
                onPressed: onDrawerToggle,
                icon: AnimatedIcon(
                  icon: AnimatedIcons.menu_close,
                  progress: _controller,
                ),
              ),
            ),
            Image.asset('assets/images/Autocarlogo.png'),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: AnimatedIcon(
                icon: AnimatedIcons.search_ellipsis,
                progress: _controller,
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
