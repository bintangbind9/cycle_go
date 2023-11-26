import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final IconData? trailingIcon;
  final double width;
  final double height;

  const PrimaryButtonWidget({
    super.key,
    this.onPressed,
    required this.text,
    this.trailingIcon,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    var textChild = Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: onPressed == null ? AppColors.disableText : AppColors.white,
        fontWeight: FontWeight.w500,
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
            color: onPressed == null ? AppColors.disable : null,
            borderRadius: BorderRadius.circular(height / 2),
            gradient: onPressed == null
                ? null
                : const LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: AppColors.gradientPrimary,
                  ),
          ),
          child: Center(
            child: trailingIcon == null
                ? textChild
                : Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textChild,
                        Icon(
                          size: 16,
                          trailingIcon,
                          color: onPressed == null
                              ? AppColors.disableText
                              : AppColors.white,
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
