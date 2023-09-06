import 'package:flutter/material.dart';
import 'package:flutter_donut_app_ui/theme_style/app_constants.dart';
import 'package:flutter_donut_app_ui/widgets/appbar/product_details_appbar.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   leading: IconButton(
      //     onPressed: (){
      //       Navigator.pop(context);
      //     },
      //     icon: Icon(Icons.chevron_left,size: 34, color: Color(0xFF424242),)
      //   ),
      //   actions: [
      //     Container(
      //       margin: EdgeInsets.only(right: 24,top: 10),
      //       decoration: BoxDecoration(
      //         color: Colors.pink[50],
      //         borderRadius: BorderRadius.circular(100)
      //       ),
      //       child: IconButton(onPressed: (){},
      //           icon: Icon(Icons.delete_rounded, color: Color(0xFF424242),
      //             size: 30,
      //           )
      //       ),
      //     )
      //   ],
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const DetailsAppbar(),
              const SizedBox(height: 25),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: themeColor,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 85,
                      width: 85,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 15,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)
                          ),
                        ),
                        const SizedBox(height: 18),
                        Container(
                          height: 12,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
