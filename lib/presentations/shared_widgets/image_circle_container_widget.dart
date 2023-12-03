import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class ImageCircleContainerWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final double size;
  final double padding;
  final String image;

  const ImageCircleContainerWidget({
    super.key,
    required this.onPressed,
    required this.size,
    required this.padding,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(size / 2),
      child: Container(
        width: size,
        height: size,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: AppColors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.1),
              offset: const Offset(0, 0),
              blurRadius: 30,
              spreadRadius: 6,
            ),
          ],
        ),
        child: Center(
          child: Image.asset(
            image,
          ),
        ),
      ),
    );
  }
}
