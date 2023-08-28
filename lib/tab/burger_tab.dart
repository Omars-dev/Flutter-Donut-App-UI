import 'package:flutter/material.dart';
import 'package:flutter_donut_app_ui/utils/burger_tile.dart';

class BurgerTab extends StatelessWidget {
  BurgerTab({Key? key}) : super(key: key);

  List donutOnSale = [
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
