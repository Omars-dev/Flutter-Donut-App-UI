import 'package:flutter/material.dart';

class DetailsNew extends StatelessWidget {
  const DetailsNew({Key? key}) : super(key: key);

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
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Strawberry',
          style: TextStyle(
            color: Color(0xFF424242),
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Details Image
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 16),
              child: Image.asset(
                'assets/images/img_details/strawberry_donut_details.png',
              ),
            ),
            const SizedBox(height: 10),

            // Donut Details
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Ingredients Section
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Ingredients',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                        fontSize: 26,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 130,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          // Ingredients items
                          IngredientItem(
                            name: 'Sugar',
                            amount: '8 Gram',
                            percentage: '2%',
                          ),
                          SizedBox(width: 8), // Add spacing of 8
                          IngredientItem(
                            name: 'Salt',
                            amount: '8 Gram',
                            percentage: '.3%',
                          ),
                          SizedBox(width: 8), // Add spacing of 8
                          IngredientItem(
                            name: 'Fat',
                            amount: '8 Gram',
                            percentage: '12%',
                          ),
                          SizedBox(width: 8), // Add spacing of 8
                          IngredientItem(
                            name: 'Energy',
                            amount: '140 Kal',
                            percentage: '40%',
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Details
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Details',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                        fontSize: 26,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      'The sweet and subtle salty combo of chocolate meets caramel. Introduce the caramel duo to your mouth!',
                      style: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),
                  // Button - ADD to CART
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 16,
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: const Color(0xFFfbe9f1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black38),
                    ),
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
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Delivery Not Included',
                              style: TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        const Text(
                          'ADD to CART',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
