import 'package:flutter/material.dart';

class CommonIconButton extends StatelessWidget {
  final IconData iconData;
  final Function? function;
  final Color? color;
  final Color? iconColor;

  const CommonIconButton(
      {super.key, required this.iconData, required this.function, this.color, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          if (function != null) {
            function!();
          }
        },
        icon: CircleAvatar(
          backgroundColor: color,
          child: Icon(
            iconData,
            color: (iconColor == null) ? Colors.black54 : iconColor,
          ),
        ));
  }
}
