import 'package:flutter/material.dart';

class ImageBoxWidget extends StatelessWidget {
  final double width;
  final double height;
  final String image;
  final Color color;

  const ImageBoxWidget({
    super.key,
    required this.width,
    required this.height,
    required this.image,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Image.asset(image),
      ),
    );
  }
}
