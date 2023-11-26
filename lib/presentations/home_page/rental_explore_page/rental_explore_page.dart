import 'package:cyclego/constants/styles.dart';
import 'package:cyclego/presentations/shared_widgets/tab_button_widget.dart';
import 'package:cyclego/utils/extensions/sized_box.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

enum RentalExploreFilter {
  nearMe,
  mostPopular,
  newest,
}

class RentalExplorePage extends StatefulWidget {
  const RentalExplorePage({super.key});

  @override
  State<RentalExplorePage> createState() => _RentalExplorePageState();
}

class _RentalExplorePageState extends State<RentalExplorePage> {
  RentalExploreFilter _filter = RentalExploreFilter.nearMe;

  void setFilter(RentalExploreFilter filter) {
    setState(() {
      _filter = filter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: AppColors.gradientSecondary,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(Styles.mainRadius),
                bottomRight: Radius.circular(Styles.mainRadius),
              ),
            ),
            child: Column(
              children: [
                Styles.mainTopPadding.sizedBoxHeight,
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(Styles.mainPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: AppColors.white,
                            size: 20,
                          ),
                        ),
                        const Text(
                          'Rental Explore',
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        20.sizedBoxWidth,
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(Styles.mainPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TabButtonWidget(
                        onPressed: () => setFilter(
                          RentalExploreFilter.nearMe,
                        ),
                        text: 'near me',
                        textSize: 12,
                        width: 80,
                        height: 28,
                        isEnabled: _filter == RentalExploreFilter.nearMe,
                        horizontalPadding: 14,
                      ),
                      TabButtonWidget(
                        onPressed: () => setFilter(
                          RentalExploreFilter.mostPopular,
                        ),
                        text: 'most popular',
                        textSize: 12,
                        width: 120,
                        height: 28,
                        isEnabled: _filter == RentalExploreFilter.mostPopular,
                        horizontalPadding: 14,
                      ),
                      TabButtonWidget(
                        onPressed: () => setFilter(
                          RentalExploreFilter.newest,
                        ),
                        text: 'newest',
                        textSize: 12,
                        width: 80,
                        height: 28,
                        isEnabled: _filter == RentalExploreFilter.newest,
                        horizontalPadding: 14,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
