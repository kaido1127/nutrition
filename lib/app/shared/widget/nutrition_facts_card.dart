import 'package:flutter/material.dart';

class NutritionFactsCard extends StatelessWidget {
  final String title;
  final String substring;
  const NutritionFactsCard({super.key, required this.title, required this.substring});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3,bottom: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
           Text(
            substring,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
