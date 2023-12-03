import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.rating,
    required this.width,
    required this.iconSize,
    required this.mainAxisAlignment,
  });

  final int rating;
  final double width;
  final double iconSize;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Icon(
            Icons.star,
            size: iconSize,
            color: rating >= 1 ? AppColors.yellowStar : AppColors.disable,
          ),
          Icon(
            Icons.star,
            size: iconSize,
            color: rating >= 2 ? AppColors.yellowStar : AppColors.disable,
          ),
          Icon(
            Icons.star,
            size: iconSize,
            color: rating >= 3 ? AppColors.yellowStar : AppColors.disable,
          ),
          Icon(
            Icons.star,
            size: iconSize,
            color: rating >= 4 ? AppColors.yellowStar : AppColors.disable,
          ),
          Icon(
            Icons.star,
            size: iconSize,
            color: rating >= 5 ? AppColors.yellowStar : AppColors.disable,
          ),
        ],
      ),
    );
  }
}
