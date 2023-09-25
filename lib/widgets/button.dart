import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final String imagePath;
  final bool isSelected;
  final Function()? onTap;

  CustomButton({
    required this.label,
    required this.imagePath,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.pink, width: isSelected ? 2 : 0),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 30,
            ),
            const SizedBox(width: 12),
            Text(label),
          ],
        ),
      ),
    );
  }
}
