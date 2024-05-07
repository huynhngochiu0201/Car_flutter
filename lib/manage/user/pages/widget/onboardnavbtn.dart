import 'package:flutter/material.dart';

class OnBoardNavBtn extends StatelessWidget {
  const OnBoardNavBtn({
    super.key,
    required this.onPressed,
    required this.name,
  });
  final String name;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10.0),
      splashColor: Colors.black12,
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          name,
          style: const TextStyle(
              fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
