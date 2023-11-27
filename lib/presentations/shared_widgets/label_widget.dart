import 'package:flutter/material.dart';

class LabelWidget extends StatelessWidget {
  final Color backgroundColor;
  final Color foreColor;
  final String text;

  const LabelWidget({
    super.key,
    required this.backgroundColor,
    required this.foreColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 2,
        horizontal: 6,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 10, color: foreColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
