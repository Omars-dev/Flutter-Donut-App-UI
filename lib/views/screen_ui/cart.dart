import 'package:flutter/material.dart';
import 'package:flutter_donut_app_ui/theme_style/app_constants.dart';
import 'package:flutter_donut_app_ui/widgets/appbar/product_details_appbar.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);

  int cartPrice =95;
  String cartTitle = 'Strawberry Donut';

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
              const SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
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
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          // image: DecorationImage(image: AssetImage('assets/images/strawberry_donut.png')),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Image.asset('assets/images/strawberry_donut.png'),
                    ),
                    const SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('\$$cartTitle',style: const TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w700),),
                        const SizedBox(height: 6),
                        Text('\$$cartPrice',style: const TextStyle(fontSize: 16,color: Colors.pink,fontWeight: FontWeight.w700),),
                        const SizedBox(height: 15),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: const Text('View Cart', style: TextStyle(fontSize: 12,color: Colors.black38,fontWeight: FontWeight.w500),),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Expanded(
                            child: Container(
                              color: Colors.pink,
                              width: 12,
                              height: 40,
                            )
                        )
                      ],
                    )
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
