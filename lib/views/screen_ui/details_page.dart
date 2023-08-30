import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfbe9f1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: Colors.grey[800],
            size: 32,
          ),
          onPressed: () {},
        ),
        title: const Text(
          'Strawberry',
          style: TextStyle(
              color: Color(0xFF424242),
              fontSize: 22,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          //TODO: Details Image
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 16),
            child: Image.asset(
                'assets/images/img_details/strawberry_donut_details.png'),
          ),
          const SizedBox(height: 10),

          //TODO: Donut Details
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //TODO: Ingredients Section
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Ingredients',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                          fontSize: 26),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //TODO: Ingredients items
                        Container(
                          padding: const EdgeInsets.only(
                              top: 20, left: 8, right: 8, bottom: 8),
                          height: 130,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 1.5),
                              borderRadius: BorderRadius.circular(50)),
                          child: Column(
                            children: [
                              const Text(
                                'Sugar',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 3),
                              const Text(
                                '8 Gram',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 11,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                width: 55,
                                height: 55,
                                padding: const EdgeInsets.all(10),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: const Color(0xFF93d6ff),
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Text(
                                  '2%',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 20, left: 8, right: 8, bottom: 8),
                          height: 130,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 1.5),
                              borderRadius: BorderRadius.circular(50)),
                          child: Column(
                            children: [
                              const Text(
                                'Salt',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 3),
                              const Text(
                                '8 Gram',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 11,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                width: 55,
                                height: 55,
                                padding: const EdgeInsets.all(10),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFfbe9f1),
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Text(
                                  '.3%',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 20, left: 8, right: 8, bottom: 8),
                          height: 130,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 1.5),
                              borderRadius: BorderRadius.circular(50)),
                          child: Column(
                            children: [
                              const Text(
                                'Fat',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 3),
                              const Text(
                                '8 Gram',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 11,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                width: 55,
                                height: 55,
                                padding: const EdgeInsets.all(10),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFfbe9f1),
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Text(
                                  '12%',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 20, left: 8, right: 8, bottom: 8),
                          height: 130,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 1.5),
                              borderRadius: BorderRadius.circular(50)),
                          child: Column(
                            children: [
                              const Text(
                                'Energy',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 3),
                              const Text(
                                '140 Kal',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 11,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                width: 55,
                                height: 55,
                                padding: const EdgeInsets.all(10),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFfbe9f1),
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Text(
                                  '40%',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  //TODO: Details
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Details',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                          fontSize: 26),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      'The sweet and subtle salty combo of chocolate meets caramel. Introduce the caramel duo to your mouth !',
                      style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                  ),

                  const SizedBox(height: 10),
                  //TODO: Button - ADD to CART
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black38)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              '\$55.56',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                            Text(
                              'Delivery Not Included',
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            )
                          ],
                        ),
                        const Text('ADD TO CART', style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
