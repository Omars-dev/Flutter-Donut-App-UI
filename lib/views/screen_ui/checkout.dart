import 'package:flutter/material.dart';
import 'package:flutter_donut_app_ui/theme_style/app_constants.dart';
import 'package:flutter_donut_app_ui/widgets/cart_summary.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.black54,
            size: 32,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                // Existing ListView content
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
                      color: themeColor, borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text('Delivery Address',
                              style: TextStyle(fontSize: 16, fontWeight: w500)),
                          const Spacer(),
                          Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)),
                              child: const Icon(Icons.edit_outlined, size: 22)),
                        ],
                      ),
                      const SizedBox(height: 15),
                      // Address
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        color: themeColor,
                                        borderRadius: BorderRadius.circular(100)),
                                    child: const Icon(Icons.home, size: 18)),
                                const SizedBox(width: 10),
                                const Flexible(
                                  child: Text(
                                      '775 Waterville Drive, Brentwood CA-94513',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: w400,
                                          color: Colors.black54)),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      color: themeColor,
                                      borderRadius: BorderRadius.circular(100)),
                                  child: const Icon(
                                    Icons.phone,
                                    size: 18,
                                    color: Colors.black87,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Flexible(
                                  child: Text('+1 765 564 9008',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: w400,
                                          color: Colors.black54)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                      color: themeColor, borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text('Shipping Method',
                              style: TextStyle(fontSize: 16, fontWeight: w500)),
                          Spacer(),
                          Icon(Icons.arrow_drop_down_circle_outlined, size: 22),
                        ],
                      ),
                      const SizedBox(height: 15),
                      // Address
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.local_shipping, size: 18),
                                SizedBox(width: 10),
                                Flexible(
                                  child: Text(
                                      'DHL',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: w400,
                                          color: Colors.black54)),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: const [
                                Icon(Icons.local_shipping, size: 18),
                                SizedBox(width: 10),
                                Flexible(
                                  child: Text(
                                      'FEDX',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: w400,
                                          color: Colors.black54)),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: const [
                                Icon(Icons.local_shipping, size: 18),
                                SizedBox(width: 10),
                                Flexible(
                                  child: Text(
                                      'REDX',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: w400,
                                          color: Colors.black54)),
                                ),

                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: const [
                                Icon(Icons.local_shipping, size: 18),
                                SizedBox(width: 10),
                                Flexible(
                                  child: Text(
                                      'PAPER FLY',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: w400,
                                          color: Colors.black54)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CartSummary(
            subtotal: 285.00,
            discount: 5.00,
            feesAndTax: 5.00,
            total: 280.00,
            onCheckoutPressed: () {},
          ),
        ],
      )
    );
  }
}
