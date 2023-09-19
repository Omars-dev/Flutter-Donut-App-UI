import 'package:flutter/material.dart';
import 'package:flutter_donut_app_ui/theme_style/app_constants.dart';

// class CartSummary extends StatelessWidget {
//   const CartSummary({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 310,
//       padding: const EdgeInsets.all(20),
//       decoration: const BoxDecoration(
//           color: Color(0xFFe9e9e9),
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(30),
//               topRight: Radius.circular(30))),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           const Text('Summary',
//               style: TextStyle(
//                   fontWeight: FontWeight.w600,
//                   color: Colors.black87,
//                   fontSize: 20)),
//           const SizedBox(height: 30),
//           Row(
//             children: const [
//               Text('Subtotal',
//                   style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.black54)),
//               Spacer(),
//               Text('\$285',
//                   style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.black)),
//             ],
//           ),
//           const SizedBox(height: 15),
//           Row(
//             children: const [
//               Text('Discount',
//                   style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.black54)),
//               Spacer(),
//               Text('\$5',
//                   style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.black)),
//             ],
//           ),
//           const SizedBox(height: 15),
//           Row(
//             children: const [
//               Text('Fees & Estimated Tax',
//                   style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.black54)),
//               Spacer(),
//               Text('\$0',
//                   style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.black)),
//             ],
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 15),
//             child: Divider(height: 1, color: Colors.black38),
//           ),
//           Row(
//             children: const [
//               Text('Total',
//                   style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black)),
//               Spacer(),
//               Text('\$280',
//                   style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black)),
//             ],
//           ),
//           const SizedBox(height: 20),
//           MaterialButton(
//             onPressed: () {
//               Navigator.of(context).push(MaterialPageRoute(
//                   builder: (context) => const CheckoutPage()));
//             },
//             color: Colors.pink[200],
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(22.0)),
//             padding: const EdgeInsets.symmetric(
//                 vertical: 10, horizontal: 16),
//             child: const Text(
//               'Checkout',
//               style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                   color: Colors.white),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


class CartSummary extends StatelessWidget {
  const CartSummary({
    Key? key,
    required this.subtotal,
    required this.discount,
    required this.feesAndTax,
    required this.total,
    required this.onCheckoutPressed,
  }) : super(key: key);

  final double subtotal;
  final double discount;
  final double feesAndTax;
  final double total;
  final VoidCallback onCheckoutPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      decoration: const BoxDecoration(
        color: Color(0xFFe9e9e9),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Summary',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black87,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              const Text(
                'Subtotal',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
              const Spacer(),
              Text(
                '\$$subtotal',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Text(
                'Discount',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
              const Spacer(),
              Text(
                '\$$discount',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Text(
                'Fees & Estimated Tax',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
              const Spacer(),
              Text(
                '\$$feesAndTax',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Divider(height: 1, color: Colors.black38),
          ),
          Row(
            children: [
              const Text(
                'Total',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const Spacer(),
              Text(
                '\$$total',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          MaterialButton(
            onPressed: onCheckoutPressed,
            color: mainButtonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22.0),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 16,
            ),
            child: const Text(
              'Pay Now',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
