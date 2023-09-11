import 'package:flutter/material.dart';
import 'package:flutter_donut_app_ui/theme_style/app_constants.dart';
import 'package:flutter_donut_app_ui/views/screen_ui/cart_details.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);

  int cartPrice = 95;
  String cartTitle = 'Strawberry Donut';
  String cartTitle2 = 'Pink Donut';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left,
            color: Colors.black54,
            size: 32,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'My Items',
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 24, color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.delete_rounded,
              size: 28,
              color: Colors.black38,
            ),
            onPressed: () {},
          ),
          SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // const DetailsAppbar(),
              const SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: themeColor, borderRadius: BorderRadius.circular(20)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 85,
                      width: 85,
                      // padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          // image: DecorationImage(image: AssetImage('assets/images/strawberry_donut.png')),
                          borderRadius: BorderRadius.circular(12)),
                      child: Image.asset(
                          'assets/images/img_details/strawberry_donut_details.png'),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const CartDetails()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cartTitle,
                            style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            '\$$cartPrice',
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.pink,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.pink[200]!.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: const Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                            child: const Text(
                              'Checkout',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(
                            Icons.delete_rounded,
                            color: Colors.black38,
                            size: 21,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          height: 28,
                          width: 80,
                          padding: const EdgeInsets.only(
                              top: 4, bottom: 6, right: 8, left: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text(
                                '+',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                              ),
                              Divider(
                                height: 1,
                                color: Colors.pink,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                              Divider(
                                height: 1,
                                color: Colors.pink,
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: themeColor, borderRadius: BorderRadius.circular(20)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 85,
                      width: 85,
                      // padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          // image: DecorationImage(image: AssetImage('assets/images/strawberry_donut.png')),
                          borderRadius: BorderRadius.circular(12)),
                      child: Image.asset(
                          'assets/images/img_details/strawberry_donut_details.png'),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const CartDetails()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cartTitle2,
                            style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            '\$$cartPrice',
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.pink,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.pink[200]!.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: const Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                            child: const Text(
                              'Checkout',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(
                            Icons.delete_rounded,
                            color: Colors.black38,
                            size: 21,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          height: 28,
                          width: 80,
                          padding: const EdgeInsets.only(
                              top: 4, bottom: 6, right: 8, left: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text(
                                '+',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                              ),
                              Divider(
                                height: 1,
                                color: Colors.pink,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                              Divider(
                                height: 1,
                                color: Colors.pink,
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: themeColor, borderRadius: BorderRadius.circular(20)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 85,
                      width: 85,
                      // padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          // image: DecorationImage(image: AssetImage('assets/images/strawberry_donut.png')),
                          borderRadius: BorderRadius.circular(12)),
                      child: Image.asset(
                          'assets/images/img_details/strawberry_donut_details.png'),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const CartDetails()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cartTitle2,
                            style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            '\$$cartPrice',
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.pink,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.pink[200]!.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: const Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                            child: const Text(
                              'Checkout',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(
                            Icons.delete_rounded,
                            color: Colors.black38,
                            size: 21,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          height: 28,
                          width: 80,
                          padding: const EdgeInsets.only(
                              top: 4, bottom: 6, right: 8, left: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text(
                                '+',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                              ),
                              Divider(
                                height: 1,
                                color: Colors.pink,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                              Divider(
                                height: 1,
                                color: Colors.pink,
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: themeColor, borderRadius: BorderRadius.circular(20)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 85,
                      width: 85,
                      // padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          // image: DecorationImage(image: AssetImage('assets/images/strawberry_donut.png')),
                          borderRadius: BorderRadius.circular(12)),
                      child: Image.asset(
                          'assets/images/img_details/strawberry_donut_details.png'),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const CartDetails()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cartTitle2,
                            style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            '\$$cartPrice',
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.pink,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.pink[200]!.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: const Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                            child: const Text(
                              'Checkout',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(
                            Icons.delete_rounded,
                            color: Colors.black38,
                            size: 21,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          height: 28,
                          width: 80,
                          padding: const EdgeInsets.only(
                              top: 4, bottom: 6, right: 8, left: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text(
                                '+',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                              ),
                              Divider(
                                height: 1,
                                color: Colors.pink,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                              Divider(
                                height: 1,
                                color: Colors.pink,
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 35),
              Container(
                height: 310,
                padding: const EdgeInsets.all(24),
                decoration: const BoxDecoration(
                    color: Color(0xFFe9e9e9),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text('Summary',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                            fontSize: 20)),
                    const SizedBox(height: 30),
                    Row(
                      children: const [
                        Text('Subtotal',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54)),
                        Spacer(),
                        Text('\$285',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: const [
                        Text('Discount',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54)),
                        Spacer(),
                        Text('\$5',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: const [
                        Text('Fees & Estimated Tax',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54)),
                        Spacer(),
                        Text('\$0',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Divider(height: 1, color: Colors.black38),
                    ),
                    Row(
                      children: const [
                        Text('Total',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                        Spacer(),
                        Text('\$280',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                      ],
                    ),
                    const SizedBox(height: 20),
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.pink[200],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0)),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 16),
                      child: const Text(
                        'Checkout',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
