import 'package:flutter/material.dart';

class RatioLinear extends StatelessWidget {
  final double width;
  final double ratio;
  const RatioLinear({super.key, required this.width, required this.ratio});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 6,
          width: width,
          color: Colors.grey[400],
          //child: Lin,
        ),
        if (ratio > 0)
          Container(
            height: 6,
            width: width * ((ratio > 1) ? 1 : ratio),
            color: (ratio > 1) ? Colors.redAccent : Colors.blue,
            //child: Lin,
          ),
      ],
    );
  }
}
