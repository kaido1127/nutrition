import 'package:flutter/material.dart';

class TextDetailsCard extends StatelessWidget {
  final String title;
  final String substring;
  const TextDetailsCard({super.key, required this.title, required this.substring});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment:CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        Text(substring,style: const TextStyle(fontSize: 13)),
      ],
    );
  }
}
