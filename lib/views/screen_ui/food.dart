import 'package:flutter/material.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.fill, // Adjust how the image fits the container
          ),
        ),
        child: const Center(
            // child: Text(
            //   'Hello, Background!',
            //   style: TextStyle(fontSize: 24, color: Colors.white),
            // ),
            ),
      ),
    ));
  }
}
