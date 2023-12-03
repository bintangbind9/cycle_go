import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class IconCircleContainerWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final double size;
  final double padding;
  final IconData icon;
  final double iconSize;
  final Color iconColor;

  const IconCircleContainerWidget({
    super.key,
    required this.onPressed,
    required this.size,
    required this.padding,
    required this.icon,
    required this.iconSize,
    required this.iconColor,
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
          child: Icon(
            icon,
            size: iconSize,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
