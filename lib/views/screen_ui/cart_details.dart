import 'package:flutter/material.dart';
import 'package:flutter_donut_app_ui/theme_style/app_constants.dart';
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
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: mainButtonColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      width: 18,
                      height: 18,
                      padding: const EdgeInsets.only(top: 2.0, bottom: 5,right: 2,left: 5),
                      child: const Text(
                        '1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 10),
                    const Text('Strawberry Donut'),
                    const Spacer(),
                    const Text('\$95'),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text('Quantity: 1x'),
              ),
              const SizedBox(height: 35),
              CartSummary(
                  subtotal: 280,
                  discount: 5,
                  feesAndTax: 10,
                  total: 285,
                  onCheckoutPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
