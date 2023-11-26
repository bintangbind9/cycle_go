import 'package:cyclego/constants/app_colors.dart';
import 'package:cyclego/constants/app_images.dart';
import 'package:cyclego/constants/styles.dart';
import 'package:cyclego/presentations/home_page/greeting_widget.dart';
import 'package:cyclego/presentations/home_page/main_banner_widget.dart';
import 'package:cyclego/presentations/shared_widgets/primay_button_widget.dart';
import 'package:cyclego/presentations/shared_widgets/radio_text_widget.dart';
import 'package:cyclego/utils/extensions/sized_box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double halfWidthScreen = MediaQuery.of(context).size.width / 2;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: AppColors.gray,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(Styles.mainRadius),
              ),
            ),
            height: 460,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                60.sizedBoxHeight,
                const GreetingWidget(),
                const MainBannerWidget(),
                const RadioTextWidget(
                  childWidget: Row(
                    children: [
                      Text('Your total point is '),
                      Text(
                        '5300 pts',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.purple,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(Styles.mainPadding),
                  child: Text(
                    'New Bike This Month!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: halfWidthScreen,
                      height: halfWidthScreen,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              width: halfWidthScreen * 0.9,
                              height: halfWidthScreen * 0.9,
                              decoration: BoxDecoration(
                                color: AppColors.softBrown,
                                borderRadius: BorderRadius.circular(
                                  Styles.mainRadius,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            child: Image.asset(
                              AppImages.cycle2,
                              width: halfWidthScreen,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: halfWidthScreen,
                      height: halfWidthScreen,
                      child: Padding(
                        padding: const EdgeInsets.all(Styles.mainPadding),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Wagon Pro 3',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'Cargo Bike',
                              style: TextStyle(
                                color: AppColors.disableText,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: const [
                                  TextSpan(
                                    text: '\$4,5',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' /hour',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            10.sizedBoxHeight,
                            const Text('rented by'),
                            const Text(
                              'Bike of Murjinem',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            10.sizedBoxHeight,
                            PrimaryButtonWidget(
                              onPressed: () {},
                              text: 'View',
                              width: 80,
                              height: 36,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
