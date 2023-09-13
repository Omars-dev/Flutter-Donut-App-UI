import 'package:flutter/material.dart';
import 'package:flutter_donut_app_ui/theme_style/app_constants.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.chevron_left,color: Colors.black54,size: 32,),
        ),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(24),
            child: Text('Checkout',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 30)),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              color: themeColor,
                borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text('Delivery Address'),
                    const Spacer(),
                    Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: const Icon(Icons.edit_outlined,size: 22)
                    ),
                  ],
                ),
                //Address
                Row(
                  children: [
                    const Spacer(),
                    Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: const Icon(Icons.edit_outlined,size: 22)
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
