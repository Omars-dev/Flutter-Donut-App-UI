import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  const SmoothieTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text('Smoothie Tab',style: TextStyle(fontSize: 40,color: Colors.black87),),
      ),
    );
  }
}
