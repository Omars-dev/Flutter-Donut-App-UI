import 'package:flutter/material.dart';
import 'package:flutter_donut_app_ui/utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
  DonutTab({Key? key}) : super(key: key);

  List donutOnSale = [
    ["Ice Cream", "36", Colors.blue, "assets/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "assets/images/strawberry_donut.png"],
    ["Grape", "84", Colors.purple, "assets/images/grape_donut.png"],
    ["Chocolate", "95", Colors.brown, "assets/images/chocolate_donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(12),
        itemCount: donutOnSale.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlavor: donutOnSale[index][0],
            donutPrice: donutOnSale[index][1],
            donutColor: donutOnSale[index][2],
            imageName: donutOnSale[index][3],
          );
        });
  }
}
