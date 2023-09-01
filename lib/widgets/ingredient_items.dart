import 'package:flutter/material.dart';

class IngredientItem extends StatelessWidget {
  final String name;
  final String amount;
  final String percentage;

  const IngredientItem({super.key,
    required this.name,
    required this.amount,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 8, right: 8, bottom: 8),
      height: 130,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1.5),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            amount,
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
              color: const Color(0xFF93d6ff),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
              percentage,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

