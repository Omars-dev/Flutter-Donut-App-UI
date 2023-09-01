import 'package:flutter/material.dart';
import 'package:flutter_donut_app_ui/utils/smoothie_tile.dart';

class SmoothieTab extends StatelessWidget {
  SmoothieTab({Key? key}) : super(key: key);

  List pizzaOnSale = [
    ["🍓 Banana", "50", Colors.pink, "assets/images/strawberry_smoothie.png"],
    ["Blueberry 🌰", "75", Colors.blue, "assets/images/blueberry_smoothie.png"],
    ["Cherry Almond", "34", Colors.red, "assets/images/cherry-smoothie.png"],
    ["Mixed Berry", "120", Colors.purple, "assets/images/blueberry_smoothie.png"],
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
