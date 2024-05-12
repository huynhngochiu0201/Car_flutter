import 'package:flutter/material.dart';

class ButtomSetting extends StatelessWidget {
  const ButtomSetting({
    super.key,
    this.icon,
    required this.title,
    this.onPress,
  });
  final Icon? icon;
  final String title;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: SizedBox(
        height: 56,
        width: 288,
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          splashColor: Colors.blue,
          highlightColor: Colors.red,
          onTap: onPress,
          child: Row(
            children: [
              const SizedBox(width: 15.0),
              if (icon != null) ...[
                icon!,
                const SizedBox(width: 4.0),
              ],
              const SizedBox(width: 10.0),
              Text(
                title,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
