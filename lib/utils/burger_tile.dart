import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerFlavor;
  final String burgerPrice;
  final burgerColor;
  final String imageName;

  final borderRadius = 20.0;

  const BurgerTile(
      {super.key,
        required this.burgerFlavor,
        required this.burgerPrice,
        this.burgerColor,
        required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: burgerColor[50],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: burgerColor[100],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(borderRadius),
                          topRight: Radius.circular(borderRadius))),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 5),
                  child: Text(
                    '\$$burgerPrice',
                    style: TextStyle(
                        color: burgerColor[800],
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),

            //TODO: Price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
              child: Image.asset(imageName),
            ),

            //TODO: Text
            Text(
              burgerFlavor,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 4),
            Text(
              'Burger King',
              style: TextStyle(color: Colors.grey[600]),
            ),

            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 6,vertical: 3),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.pink[400],
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.grey[800],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
