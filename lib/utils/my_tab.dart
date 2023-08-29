import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;

  const MyTab({Key? key, required this.iconPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 65,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.grey[200]!,),
          borderRadius: BorderRadius.circular(20)
        ),
        child: Image.asset(iconPath,color: Colors.grey[600],),
      ),
    );
  }
}
