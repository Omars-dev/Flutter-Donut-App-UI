import 'package:flutter/material.dart';
import 'package:flutter_donut_app_ui/utils/smoothie_tile.dart';

class SmoothieTab extends StatelessWidget {
  SmoothieTab({Key? key}) : super(key: key);

  List pizzaOnSale = [
    ["Ice Cream", "36", Colors.blue, "assets/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "assets/images/strawberry_donut.png"],
    ["Grape", "84", Colors.purple, "assets/images/grape_donut.png"],
    ["Chocolate", "95", Colors.brown, "assets/images/chocolate_donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(12),
        itemCount: pizzaOnSale.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return SmoothieTile(
            smoothieFlavor: pizzaOnSale[index][0],
            smoothiePrice: pizzaOnSale[index][1],
            smoothieColor: pizzaOnSale[index][2],
            imageName: pizzaOnSale[index][3],
          );
        });
  }
}
