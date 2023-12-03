import 'package:cyclego/constants/styles.dart';
import 'package:cyclego/models/bike.model.dart';
import 'package:cyclego/models/rental.model.dart';
import 'package:cyclego/models/rgb_color.model.dart';
import 'package:cyclego/presentations/shared_widgets/icon_circle_container_widget.dart';
import 'package:cyclego/presentations/shared_widgets/primary_button_widget.dart';
import 'package:cyclego/utils/extensions/sized_box.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_images.dart';
import '../../shared_widgets/image_circle_container_widget.dart';
import '../../shared_widgets/label_widget.dart';
import '../../shared_widgets/rating_widget.dart';
import '../../shared_widgets/status_text_widget.dart';

class RentalOverviewPage extends StatelessWidget {
  final Rental rental;

  const RentalOverviewPage({
    super.key,
    required this.rental,
  });

  @override
  Widget build(BuildContext context) {
    final RgbColor rentalBackColor = rental.pictureBackgroundRgbColor!;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final double expandedAppBarHeight = screenHeight * 0.4;
    const double bottomAppBarHeight = 172;
    const double bottomAppBarMargin = 12;
    const double bottomAppBarWidthPercentage = 0.8;
    const double itemPadding = 18;
    const double itemHeight = 136;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            stretch: true,
            expandedHeight: expandedAppBarHeight,
            backgroundColor: Color.fromRGBO(
              rentalBackColor.r!,
              rentalBackColor.g!,
              rentalBackColor.b!,
              1,
            ),
            leading: IconButton.filled(
              alignment: Alignment.center,
              color: AppColors.disableText,
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back_ios),
              padding: const EdgeInsets.only(left: 4),
              iconSize: 16,
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  AppColors.white,
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
              ],
              background: Container(
                padding: const EdgeInsets.only(top: Styles.mainTopPadding),
                width: double.maxFinite,
                color: Color.fromRGBO(
                  rentalBackColor.r!,
                  rentalBackColor.g!,
                  rentalBackColor.b!,
                  1,
                ),
                child: Image.asset(
                  rental.picture!,
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(bottomAppBarHeight),
              child: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: bottomAppBarHeight * 0.5,
                        width: screenWidth,
                      ),
                      Container(
                        color: AppColors.white,
                        height: bottomAppBarHeight * 0.5,
                        width: screenWidth,
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28,
                      vertical: 16,
                    ),
                    width: screenWidth * bottomAppBarWidthPercentage,
                    height: bottomAppBarHeight - bottomAppBarMargin,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(Styles.mainRadius),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.black.withOpacity(0.1),
                          offset: const Offset(0, 0),
                          blurRadius: 40,
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          rental.name!,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          rental.address!,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: AppColors.disableText,
                          ),
                        ),
                        14.sizedBoxHeight,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RatingWidget(
                              rating: rental.rating!,
                              width: 140,
                              iconSize: 22,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),
                            LabelWidget(
                              backgroundColor: rental.isOpen!
                                  ? AppColors.backgroundSuccess
                                  : AppColors.backgroundDanger,
                              foreColor: rental.isOpen!
                                  ? AppColors.foregroundSuccess
                                  : AppColors.foregroundDanger,
                              text: rental.isOpen! ? 'OPEN' : 'CLOSED',
                            ),
                          ],
                        ),
                        14.sizedBoxHeight,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            StatusTextWidget(
                              mainText: rental.ready!.toString(),
                              sideText: 'Ready',
                            ),
                            StatusTextWidget(
                                mainText: rental.booked!.toString(),
                                sideText: 'Booked'),
                            StatusTextWidget(
                                mainText: rental.inUse!.toString(),
                                sideText: 'In-use'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(Styles.mainPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ImageCircleContainerWidget(
                    onPressed: () {},
                    size: 44,
                    padding: 12,
                    image: AppImages.heartFilled,
                  ),
                  IconCircleContainerWidget(
                    onPressed: () {},
                    size: 44,
                    padding: 0,
                    icon: Icons.call,
                    iconSize: 22,
                    iconColor: AppColors.disableText,
                  ),
                  IconCircleContainerWidget(
                    onPressed: () {},
                    size: 44,
                    padding: 0,
                    icon: Icons.messenger,
                    iconSize: 22,
                    iconColor: AppColors.disableText,
                  ),
                  PrimaryButtonWidget(
                    onPressed: () {},
                    text: rental.distance! < 1000
                        ? '${rental.distance!.toInt()} m'
                        : '${rental.distance! / 1000} km',
                    width: 110,
                    height: 48,
                    trailingIcon: Icons.arrow_forward_ios,
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: rental.bikes!.length,
              (context, index) {
                Bike bike = rental.bikes![index];
                RgbColor bikeColor = bike.pictureBackgroundRgbColor!;

                return SizedBox(
                  height: itemHeight,
                  child: Row(
                    children: [
                      Container(
                        width: screenWidth * 0.4,
                        padding: const EdgeInsets.only(
                          bottom: itemPadding,
                          top: itemPadding,
                          left: itemPadding * 2,
                        ),
                        child: Stack(
                          alignment: AlignmentDirectional.centerEnd,
                          children: [
                            Container(
                              width: screenWidth * 0.4 * 0.2,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(
                                  bikeColor.r!,
                                  bikeColor.g!,
                                  bikeColor.g!,
                                  1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(Styles.mainRadius),
                                  bottomLeft:
                                      Radius.circular(Styles.mainRadius),
                                ),
                              ),
                            ),
                            Image.asset(
                              bike.picture!,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.6,
                        padding: const EdgeInsets.only(
                          bottom: itemPadding,
                          top: itemPadding,
                          right: itemPadding * 2,
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(Styles.mainPadding),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(
                              bikeColor.r!,
                              bikeColor.g!,
                              bikeColor.g!,
                              1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(Styles.mainRadius),
                              bottomRight: Radius.circular(Styles.mainRadius),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                bike.name!,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                bike.type!,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: AppColors.disableText,
                                  fontSize: 12,
                                ),
                              ),
                              RichText(
                                overflow: TextOverflow.ellipsis,
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: [
                                    TextSpan(
                                      text: '\$${bike.rentCost!.toString()}',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const TextSpan(
                                      text: ' /hour',
                                      style: TextStyle(
                                        color: AppColors.disableText,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
