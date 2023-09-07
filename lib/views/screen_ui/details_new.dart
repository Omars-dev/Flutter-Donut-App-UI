import 'package:flutter/material.dart';
import 'package:flutter_donut_app_ui/views/screen_ui/cart.dart';

class Ingredient {
  final String name;
  final String amount;
  final String percentage;

  Ingredient({
    required this.name,
    required this.amount,
    required this.percentage,
  });
}

class DetailsNew extends StatelessWidget {
  const DetailsNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define a list of ingredients
    final ingredients = [
      Ingredient(name: 'Sugar', amount: '8 Gram', percentage: '2%'),
      Ingredient(name: 'Salt', amount: '8 Gram', percentage: '.3%'),
      Ingredient(name: 'Fat', amount: '8 Gram', percentage: '12%'),
      Ingredient(name: 'Energy', amount: '140 Kal', percentage: '40%'),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFfbe9f1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
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
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: ingredients.length,
                        itemBuilder: (BuildContext context, int index) {
                          final isPercentageContainer = index == ingredients.length - 4;

                          return Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 8, right: 8, bottom: 8),
                              height: 130,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey, width: 1.5),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    ingredients[index].name,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  Text(
                                    ingredients[index].amount,
                                    style: const TextStyle(
                                      color: Colors.black38,
                                      fontSize: 11,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Container(
                                    width: 55,
                                    height: 55,
                                    padding: const EdgeInsets.all(10),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: isPercentageContainer
                                          ? const Color(0xFF93d6ff)
                                          : const Color(0xFFfbe9f1),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Text(
                                      ingredients[index].percentage,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
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
                      'The sweet and subtle salty combo of chocolate meets caramel. Introduce the caramel duo to your mouth! The sweet and subtle salty combo of chocolate meets caramel. Introduce the caramel duo to your mouth!',
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
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CartPage()));
                          },
                          child: const Text(
                            'ADD to CART',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
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
