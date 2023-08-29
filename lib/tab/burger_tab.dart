import 'package:flutter/material.dart';
import 'package:flutter_donut_app_ui/utils/burger_tile.dart';

class BurgerTab extends StatelessWidget {
  BurgerTab({Key? key}) : super(key: key);

  List burgerOnSale = [
    ["Veggie", "40", Colors.blue, "assets/images/veggie_burger.png"],
    ["Cheese Burger", "55", Colors.red, "assets/images/cheese_burger.png"],
    ["Hamburger", "75", Colors.purple, "assets/images/hamburger.png"],
    ["Beef Cheese DL", "100", Colors.brown, "assets/images/beef_cheese.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(12),
        itemCount: burgerOnSale.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return BurgerTile(
            burgerFlavor: burgerOnSale[index][0],
            burgerPrice: burgerOnSale[index][1],
            burgerColor: burgerOnSale[index][2],
            imageName: burgerOnSale[index][3],
          );
        });
  }
}
