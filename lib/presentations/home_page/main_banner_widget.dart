import 'package:cyclego/constants/constants.dart';
import 'package:cyclego/utils/extensions/sized_box.dart';
import 'package:flutter/material.dart';

import '../shared_widgets/image_box_widget.dart';

class MainBannerWidget extends StatelessWidget {
  const MainBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: Styles.mainPadding,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Styles.mainRadius),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: AppColors.gradientSecondary,
              ),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 120,
                        child: Text(
                          'Rental Explore',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      10.sizedBoxHeight,
                      const Row(
                        children: [
                          Text(
                            '127',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.white,
                            ),
                          ),
                          Text(
                            ' near you',
                            style: TextStyle(
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: AppColors.white,
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 24,
                  right: 16,
                  child: Image.asset(
                    AppImages.whitePoints,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 240,
          child: const Stack(
            children: [
              Positioned(
                right: 8,
                child: ImageBoxWidget(
                  width: 80,
                  height: 80,
                  image: AppImages.personCycle1,
                  color: AppColors.whiteBackgroundImage,
                ),
              ),
              Positioned(
                top: 80,
                right: 90,
                child: ImageBoxWidget(
                  width: 90,
                  height: 90,
                  image: AppImages.personCycle2,
                  color: AppColors.yellowBackgroundImage,
                ),
              ),
              Positioned(
                right: 0,
                bottom: 82,
                child: ImageBoxWidget(
                  width: 50,
                  height: 50,
                  image: AppImages.personCycle4,
                  color: AppColors.greenBackgroundImage,
                ),
              ),
              Positioned(
                right: 30,
                bottom: 0,
                child: ImageBoxWidget(
                  width: 68,
                  height: 68,
                  image: AppImages.personCycle5,
                  color: AppColors.blueBackgroundImage,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
