import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  const PancakesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text('Pancakes Tab',style: TextStyle(fontSize: 40,color: Colors.black87),),
      ),
    );
  }
}
