import 'package:cyclego/constants/app_colors.dart';
import 'package:cyclego/constants/styles.dart';
import 'package:cyclego/utils/extensions/sized_box.dart';
import 'package:flutter/material.dart';

class RadioTextWidget extends StatelessWidget {
  final Widget childWidget;

  const RadioTextWidget({
    super.key,
    required this.childWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Styles.mainPadding),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: const BoxDecoration(
              color: AppColors.orange,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Container(
                width: 12,
                height: 12,
                decoration: const BoxDecoration(
                  color: AppColors.lightOrange,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          8.sizedBoxWidth,
          childWidget,
        ],
      ),
    );
  }
}
