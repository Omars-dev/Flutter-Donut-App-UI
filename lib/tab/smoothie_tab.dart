import 'package:flutter/material.dart';
import 'package:flutter_donut_app_ui/utils/smoothie_tile.dart';

class SmoothieTab extends StatelessWidget {
  SmoothieTab({Key? key}) : super(key: key);

  List pizzaOnSale = [
    ["Strawberry Banana", "50", Colors.pink, "assets/images/icecream_donut.png"],
    ["Blueberry Almond", "75", Colors.blue, "assets/images/strawberry_donut.png"],
    ["Cherry Almond", "34", Colors.red, "assets/images/grape_donut.png"],
    ["Mixed Berry", "120", Colors.purple, "assets/images/chocolate_donut.png"],
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
