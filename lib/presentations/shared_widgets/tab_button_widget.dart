import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class TabButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double textSize;
  final IconData? trailingIcon;
  final double width;
  final double height;
  final bool isEnabled;
  final double horizontalPadding;

  const TabButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
    required this.textSize,
    this.trailingIcon,
    required this.width,
    required this.height,
    required this.isEnabled,
    required this.horizontalPadding,
  });

  @override
  Widget build(BuildContext context) {
    var textChild = Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: isEnabled ? AppColors.purple : AppColors.disable,
        fontWeight: FontWeight.w500,
        fontSize: textSize,
      ),
    );

    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(height / 2),
        child: Ink(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: isEnabled
                ? AppColors.white
                : AppColors.disable.withOpacity(0.1),
            borderRadius: BorderRadius.circular(height / 2),
          ),
          child: Center(
            child: trailingIcon == null
                ? textChild
                : Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: horizontalPadding,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textChild,
                        Icon(
                          size: textSize,
                          trailingIcon,
                          color:
                              isEnabled ? AppColors.purple : AppColors.disable,
                        ),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
