import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final Function function;
  final String text;
  final Color? color;

  const CommonButton({super.key, required this.function, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => function(),
      style: ElevatedButton.styleFrom(
        backgroundColor: (color != null) ? color : Colors.lightBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),
      ),
    );
  }
}
