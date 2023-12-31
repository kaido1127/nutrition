import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget widget;
  const CommonContainer({super.key, required this.height, required this.width, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.lightBlue[100]),
      child: widget,
    );
  }
}

