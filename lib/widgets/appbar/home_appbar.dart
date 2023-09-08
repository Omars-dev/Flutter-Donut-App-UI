import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 56,
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Colors.transparent,
          child: Icon(Icons.chevron_left,color: Colors.black38,size: 32,),
        ),
      ],
    );
  }
}
