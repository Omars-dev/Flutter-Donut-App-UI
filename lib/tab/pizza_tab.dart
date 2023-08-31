import 'package:flutter/material.dart';
import 'package:flutter_donut_app_ui/utils/pizza_tile.dart';

class PizzaTab extends StatelessWidget {
  PizzaTab({Key? key}) : super(key: key);

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
          return PizzaTile(
            pizzaFlavor: pizzaOnSale[index][0],
            pizzaPrice: pizzaOnSale[index][1],
            pizzaColor: pizzaOnSale[index][2],
            imageName: pizzaOnSale[index][3],
          );
        });
  }
}
