import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InforUserCard extends StatelessWidget {
  const InforUserCard({
    super.key,
    required this.name,
    required this.profession,
  });
  final String name;
  final String profession;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.white24,
        child: Icon(
          CupertinoIcons.person,
          color: Colors.white,
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        profession,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
