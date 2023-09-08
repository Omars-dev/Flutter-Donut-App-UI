import 'package:flutter/material.dart';
import 'package:flutter_donut_app_ui/theme_style/app_constants.dart';
import 'package:flutter_donut_app_ui/widgets/appbar/product_details_appbar.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);

  int cartPrice = 95;
  String cartTitle = 'Strawberry Donut';
  String cartTitle2 = 'Pink Donut';

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
                      child: Image.asset('assets/images/img_details/strawberry_donut_details.png'),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$cartTitle',
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pink[200]!.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 1), // changes position of shadow
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
                    Spacer(),
                    Container(
                      width: 28,
                      padding: EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
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
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.0),
                            child: Text(
                              '1',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
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
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
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
                      child: Image.asset('assets/images/img_details/strawberry_donut_details.png'),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$cartTitle',
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pink[200]!.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 1), // changes position of shadow
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
                    Spacer(),
                    Container(
                      width: 28,
                      padding: EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
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
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.0),
                            child: Text(
                              '1',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
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
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
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
                      child: Image.asset('assets/images/img_details/img.png'),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$cartTitle2',
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pink[200]!.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 1), // changes position of shadow
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
                    Spacer(),
                    Container(
                      width: 28,
                      padding: EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
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
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.0),
                            child: Text(
                              '1',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
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
