import 'package:flutter/material.dart';
import 'package:flutter_donut_app_ui/utils/pancake_tile.dart';

class PancakeTab extends StatelessWidget {
  PancakeTab({Key? key}) : super(key: key);

  List pancakeOnSale = [
    ["Egg Pancake", "30", Colors.green, "assets/images/Egg.png"],
    ["Honey", "155", Colors.pink, "assets/images/Honey.png"],
    ["Regular", "45", Colors.purple, "assets/images/Regular.png"],
    ["Strawberry", "70", Colors.orange, "assets/images/Strawberry.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(12),
        itemCount: pancakeOnSale.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return PancakeTile(
            pancakeFlavor: pancakeOnSale[index][0],
            pancakePrice: pancakeOnSale[index][1],
            pancakeColor: pancakeOnSale[index][2],
            imageName: pancakeOnSale[index][3],
          );
        });
  }
}
