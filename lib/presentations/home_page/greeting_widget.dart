import 'package:cyclego/constants/constants.dart';
import 'package:flutter/material.dart';

class GreetingWidget extends StatelessWidget {
  const GreetingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Styles.mainPadding),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              color: AppColors.lightPurple,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.person,
              size: 40,
              color: AppColors.white,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const Text(
            'Morning ',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const Text(
            'Bintang!',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
