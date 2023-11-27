import 'package:cyclego/constants/app_colors.dart';
import 'package:flutter/material.dart';

class StatusTextWidget extends StatelessWidget {
  final String mainText;
  final String sideText;

  const StatusTextWidget({
    super.key,
    required this.mainText,
    required this.sideText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          mainText,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.purple,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          sideText,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
