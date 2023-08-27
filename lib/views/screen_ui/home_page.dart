import 'package:flutter/material.dart';
import 'food.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/food');
          },
          child: Text(
            'Home Page',
            style: TextStyle(
                fontSize: 40, color: Colors.black87, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
