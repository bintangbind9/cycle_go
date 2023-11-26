import 'package:cyclego/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBarItem extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final double iconSize;
  final bool enabled;
  final int index;
  final int lastIndex;
  final double radius;
  final double itemWidth;

  const CustomBottomNavigationBarItem({
    super.key,
    required this.onTap,
    required this.icon,
    required this.iconSize,
    required this.enabled,
    required this.index,
    required this.lastIndex,
    required this.radius,
    required this.itemWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.only(
          topLeft: index == 0 ? Radius.circular(radius) : Radius.zero,
          topRight: index == lastIndex ? Radius.circular(radius) : Radius.zero,
        ),
        child: Ink(
          width: itemWidth,
          child: Center(
            child: Icon(
              icon,
              size: iconSize,
              color: enabled ? AppColors.purple : AppColors.disableText,
            ),
          ),
        ),
      ),
    );
  }
}
