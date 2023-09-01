import 'package:flutter/material.dart';
import 'package:flutter_donut_app_ui/views/screen_ui/details_new.dart';
import 'package:flutter_donut_app_ui/views/screen_ui/details_page.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final donutColor;
  final String imageName;

  final borderRadius = 20.0;

  const DonutTile(
      {super.key,
      required this.donutFlavor,
      required this.donutPrice,
      this.donutColor,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: donutColor[100],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(borderRadius),
                          topRight: Radius.circular(borderRadius))),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 5),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                        color: donutColor[800],
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),

            //TODO: Price
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const DetailsNew()));
                print('Details Page');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
                child: Image.asset(imageName),
              ),
            ),

            //TODO: Text
            Text(
              donutFlavor,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 4),
            Text(
              'Dunkins',
              style: TextStyle(color: Colors.grey[600]),
            ),

            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 3),
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
