import 'package:flutter/material.dart';
import 'package:flutter_donut_app_ui/widgets/appbar/home_appbar.dart';
import 'package:flutter_donut_app_ui/widgets/cart_summary.dart';

class CartDetails extends StatelessWidget {
  const CartDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const HomeAppbar()),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Cart Details',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text('Strawberry Donut'),
                  Spacer(),
                  Text('\$95'),
                  Column(
                    children: [
                      Text('Qty: 1x'),
                    ],
                  )
                ],
              ),
              SizedBox(height: 35),
              CartSummary(
                  subtotal: 280,
                  discount: 5,
                  feesAndTax: 10,
                  total: 285,
                  onCheckoutPressed: (){})
            ],
          ),
        ),
      ),
    );
  }
}
