import 'package:flutter/material.dart';

AppBar cartAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Icon(
        Icons.chevron_left,
        color: Colors.black54,
        size: 32,
      ),
    ),
    centerTitle: true,
    title: const Text(
      'My Items',
      style: TextStyle(
          fontWeight: FontWeight.w700, fontSize: 24, color: Colors.black),
    ),
    actions: [
      IconButton(
        icon: const Icon(
          Icons.delete_rounded,
          size: 28,
          color: Colors.black38,
        ),
        onPressed: () {},
      ),
      const SizedBox(width: 8),
    ],
  );
}
