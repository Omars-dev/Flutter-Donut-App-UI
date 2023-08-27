import 'package:flutter/material.dart';
import 'food.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey[800],
              size: 36,
            ),
            onPressed: () {},
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
            child: Row(
              children: const [
                Text(
                  'I want to ',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  'EAT',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
