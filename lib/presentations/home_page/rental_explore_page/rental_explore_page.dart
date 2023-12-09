import 'package:cyclego/constants/app_images.dart';
import 'package:cyclego/constants/styles.dart';
import 'package:cyclego/models/bike.model.dart';
import 'package:cyclego/models/rental.model.dart';
import 'package:cyclego/models/rgb_color.model.dart';
import 'package:cyclego/presentations/home_page/rental_overview_page/rental_overview_page.dart';
import 'package:cyclego/presentations/shared_widgets/image_box_widget.dart';
import 'package:cyclego/presentations/shared_widgets/label_widget.dart';
import 'package:cyclego/presentations/shared_widgets/primary_button_widget.dart';
import 'package:cyclego/presentations/shared_widgets/status_text_widget.dart';
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
  int? _selectedIndex;
  bool _onAnimatedContainerEnd = true;

  List<Rental> rentals = [
    Rental(
      name: 'Zakiya Jones Bikes',
      address: 'Jensen St. 43, Melbourne',
      distance: 750,
      rating: 4,
      isOpen: true,
      ready: 83,
      booked: 34,
      inUse: 102,
      picture: AppImages.personCycle5,
      pictureBackgroundRgbColor: RgbColor(
        r: 92,
        g: 201,
        b: 250,
      ),
      bikes: [
        Bike(
          name: 'City Runner X-1',
          type: 'Utility Bike',
          rentCost: 3,
          picture: AppImages.cycle1,
          pictureBackgroundRgbColor: RgbColor(
            r: 243,
            g: 249,
            b: 247,
          ),
        ),
        Bike(
          name: 'Rover Step-Thru',
          type: 'Fat Bike',
          rentCost: 4.5,
          picture: AppImages.cycle3,
          pictureBackgroundRgbColor: RgbColor(
            r: 247,
            g: 241,
            b: 243,
          ),
        ),
        Bike(
          name: 'Wagon Pro 3',
          type: 'Cargo Bike',
          rentCost: 4.5,
          picture: AppImages.cycle2,
          pictureBackgroundRgbColor: RgbColor(
            r: 249,
            g: 246,
            b: 242,
          ),
        ),
        Bike(
          name: 'City Runner X-1',
          type: 'Utility Bike',
          rentCost: 3,
          picture: AppImages.cycle1,
          pictureBackgroundRgbColor: RgbColor(
            r: 243,
            g: 249,
            b: 247,
          ),
        ),
        Bike(
          name: 'Rover Step-Thru',
          type: 'Fat Bike',
          rentCost: 4.5,
          picture: AppImages.cycle3,
          pictureBackgroundRgbColor: RgbColor(
            r: 247,
            g: 241,
            b: 243,
          ),
        ),
        Bike(
          name: 'Wagon Pro 3',
          type: 'Cargo Bike',
          rentCost: 4.5,
          picture: AppImages.cycle2,
          pictureBackgroundRgbColor: RgbColor(
            r: 249,
            g: 246,
            b: 242,
          ),
        ),
        Bike(
          name: 'City Runner X-1',
          type: 'Utility Bike',
          rentCost: 3,
          picture: AppImages.cycle1,
          pictureBackgroundRgbColor: RgbColor(
            r: 243,
            g: 249,
            b: 247,
          ),
        ),
        Bike(
          name: 'Rover Step-Thru',
          type: 'Fat Bike',
          rentCost: 4.5,
          picture: AppImages.cycle3,
          pictureBackgroundRgbColor: RgbColor(
            r: 247,
            g: 241,
            b: 243,
          ),
        ),
        Bike(
          name: 'Wagon Pro 3',
          type: 'Cargo Bike',
          rentCost: 4.5,
          picture: AppImages.cycle2,
          pictureBackgroundRgbColor: RgbColor(
            r: 249,
            g: 246,
            b: 242,
          ),
        ),
      ],
    ),
    Rental(
      name: 'Velocity Rides',
      address: '305 Riverside Dr, Melbourne',
      distance: 900,
      rating: 5,
      isOpen: true,
      ready: 72,
      booked: 44,
      inUse: 82,
      picture: AppImages.personCycle2,
      pictureBackgroundRgbColor: RgbColor(
        r: 246,
        g: 219,
        b: 86,
      ),
      bikes: [
        Bike(
          name: 'City Runner X-1',
          type: 'Utility Bike',
          rentCost: 3,
          picture: AppImages.cycle1,
          pictureBackgroundRgbColor: RgbColor(
            r: 243,
            g: 249,
            b: 247,
          ),
        ),
        Bike(
          name: 'Rover Step-Thru',
          type: 'Fat Bike',
          rentCost: 4.5,
          picture: AppImages.cycle3,
          pictureBackgroundRgbColor: RgbColor(
            r: 247,
            g: 241,
            b: 243,
          ),
        ),
        Bike(
          name: 'Wagon Pro 3',
          type: 'Cargo Bike',
          rentCost: 4.5,
          picture: AppImages.cycle2,
          pictureBackgroundRgbColor: RgbColor(
            r: 249,
            g: 246,
            b: 242,
          ),
        ),
      ],
    ),
    Rental(
      name: 'Bike of Murjinem',
      address: 'Shop 7/54 West Esplanad, Melbourne',
      distance: 1500,
      rating: 4,
      isOpen: true,
      ready: 86,
      booked: 24,
      inUse: 93,
      picture: AppImages.personCycle1,
      pictureBackgroundRgbColor: RgbColor(
        r: 239,
        g: 239,
        b: 239,
      ),
      bikes: [
        Bike(
          name: 'City Runner X-1',
          type: 'Utility Bike',
          rentCost: 3,
          picture: AppImages.cycle1,
          pictureBackgroundRgbColor: RgbColor(
            r: 243,
            g: 249,
            b: 247,
          ),
        ),
        Bike(
          name: 'Rover Step-Thru',
          type: 'Fat Bike',
          rentCost: 4.5,
          picture: AppImages.cycle3,
          pictureBackgroundRgbColor: RgbColor(
            r: 247,
            g: 241,
            b: 243,
          ),
        ),
        Bike(
          name: 'Wagon Pro 3',
          type: 'Cargo Bike',
          rentCost: 4.5,
          picture: AppImages.cycle2,
          pictureBackgroundRgbColor: RgbColor(
            r: 249,
            g: 246,
            b: 242,
          ),
        ),
        Bike(
          name: 'City Runner X-1',
          type: 'Utility Bike',
          rentCost: 3,
          picture: AppImages.cycle1,
          pictureBackgroundRgbColor: RgbColor(
            r: 243,
            g: 249,
            b: 247,
          ),
        ),
        Bike(
          name: 'Rover Step-Thru',
          type: 'Fat Bike',
          rentCost: 4.5,
          picture: AppImages.cycle3,
          pictureBackgroundRgbColor: RgbColor(
            r: 247,
            g: 241,
            b: 243,
          ),
        ),
        Bike(
          name: 'Wagon Pro 3',
          type: 'Cargo Bike',
          rentCost: 4.5,
          picture: AppImages.cycle2,
          pictureBackgroundRgbColor: RgbColor(
            r: 249,
            g: 246,
            b: 242,
          ),
        ),
        Bike(
          name: 'City Runner X-1',
          type: 'Utility Bike',
          rentCost: 3,
          picture: AppImages.cycle1,
          pictureBackgroundRgbColor: RgbColor(
            r: 243,
            g: 249,
            b: 247,
          ),
        ),
        Bike(
          name: 'Rover Step-Thru',
          type: 'Fat Bike',
          rentCost: 4.5,
          picture: AppImages.cycle3,
          pictureBackgroundRgbColor: RgbColor(
            r: 247,
            g: 241,
            b: 243,
          ),
        ),
        Bike(
          name: 'Wagon Pro 3',
          type: 'Cargo Bike',
          rentCost: 4.5,
          picture: AppImages.cycle2,
          pictureBackgroundRgbColor: RgbColor(
            r: 249,
            g: 246,
            b: 242,
          ),
        ),
      ],
    ),
    Rental(
      name: 'Livolu Bike n\' ride',
      address: 'Batman Park 20, Melbourne',
      distance: 2600,
      rating: 4,
      isOpen: false,
      ready: 81,
      booked: 32,
      inUse: 89,
      picture: AppImages.personCycle3,
      pictureBackgroundRgbColor: RgbColor(
        r: 249,
        g: 126,
        b: 126,
      ),
      bikes: [
        Bike(
          name: 'City Runner X-1',
          type: 'Utility Bike',
          rentCost: 3,
          picture: AppImages.cycle1,
          pictureBackgroundRgbColor: RgbColor(
            r: 243,
            g: 249,
            b: 247,
          ),
        ),
        Bike(
          name: 'Rover Step-Thru',
          type: 'Fat Bike',
          rentCost: 4.5,
          picture: AppImages.cycle3,
          pictureBackgroundRgbColor: RgbColor(
            r: 247,
            g: 241,
            b: 243,
          ),
        ),
        Bike(
          name: 'Wagon Pro 3',
          type: 'Cargo Bike',
          rentCost: 4.5,
          picture: AppImages.cycle2,
          pictureBackgroundRgbColor: RgbColor(
            r: 249,
            g: 246,
            b: 242,
          ),
        ),
      ],
    ),
    Rental(
      name: 'Rivero Bike',
      address: '85 Orange Garden, Melbourne',
      distance: 960,
      rating: 4,
      isOpen: true,
      ready: 72,
      booked: 33,
      inUse: 87,
      picture: AppImages.personCycle4,
      pictureBackgroundRgbColor: RgbColor(
        r: 172,
        g: 212,
        b: 178,
      ),
      bikes: [
        Bike(
          name: 'City Runner X-1',
          type: 'Utility Bike',
          rentCost: 3,
          picture: AppImages.cycle1,
          pictureBackgroundRgbColor: RgbColor(
            r: 243,
            g: 249,
            b: 247,
          ),
        ),
        Bike(
          name: 'Rover Step-Thru',
          type: 'Fat Bike',
          rentCost: 4.5,
          picture: AppImages.cycle3,
          pictureBackgroundRgbColor: RgbColor(
            r: 247,
            g: 241,
            b: 243,
          ),
        ),
        Bike(
          name: 'Wagon Pro 3',
          type: 'Cargo Bike',
          rentCost: 4.5,
          picture: AppImages.cycle2,
          pictureBackgroundRgbColor: RgbColor(
            r: 249,
            g: 246,
            b: 242,
          ),
        ),
      ],
    ),
  ];

  void selectItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void setFilter(RentalExploreFilter filter) {
    setState(() {
      _filter = filter;
    });
  }

  void setAnimatedContainerEnd(bool value) {
    setState(() {
      _onAnimatedContainerEnd = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double appBarHeight = 200;
    double listViewHeight = screenHeight - appBarHeight;
    double tileHeight = 100;
    double tileExpandedHeight = 200;
    double tileLeadingWidth = 100;
    double tileLeadingHeight = 100;
    double tileContentWidth =
        screenWidth - tileLeadingWidth - Styles.mainPadding;
    double tileContentHeight = tileLeadingHeight;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Container(
            width: screenWidth,
            height: appBarHeight,
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
                  width: screenWidth,
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
          SizedBox(
            width: screenWidth,
            height: listViewHeight,
            child: ListView.builder(
              padding: const EdgeInsets.only(
                top: Styles.mainPadding,
              ),
              itemCount: rentals.length,
              itemBuilder: (context, index) {
                Rental rental = rentals[index];
                RgbColor color = rental.pictureBackgroundRgbColor!;
                ImageBoxWidget imageBoxWidget = ImageBoxWidget(
                  width: tileLeadingWidth,
                  height: tileLeadingHeight,
                  image: rental.picture!,
                  color: Color.fromRGBO(color.r!, color.g!, color.b!, 1),
                );

                return GestureDetector(
                  onTap: () {
                    if (rental.isOpen! && _selectedIndex != index) {
                      setAnimatedContainerEnd(false);
                      selectItem(index);
                    }
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.fastOutSlowIn,
                    onEnd: () {
                      setState(() {
                        setAnimatedContainerEnd(true);
                      });
                    },
                    margin: const EdgeInsets.only(
                      left: Styles.mainPadding,
                      bottom: Styles.mainPadding,
                    ),
                    width: screenWidth,
                    height: _selectedIndex == index
                        ? tileExpandedHeight
                        : tileHeight,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(Styles.subRadius),
                        bottomLeft: Radius.circular(Styles.subRadius),
                      ),
                      boxShadow: _selectedIndex != index
                          ? []
                          : [
                              BoxShadow(
                                color: AppColors.black.withOpacity(0.1),
                                offset: const Offset(-12, 4),
                                blurRadius: 10,
                                spreadRadius: 4,
                              ),
                            ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            rental.isOpen!
                                ? imageBoxWidget
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      Styles.subRadius,
                                    ),
                                    child: ColorFiltered(
                                      colorFilter: const ColorFilter.mode(
                                        AppColors.disable,
                                        BlendMode.saturation,
                                      ),
                                      child: imageBoxWidget,
                                    ),
                                  ),
                            Container(
                              padding: const EdgeInsets.all(16),
                              width: tileContentWidth,
                              height: tileContentHeight,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    rental.name!,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis,
                                      color: rental.isOpen!
                                          ? AppColors.black
                                          : AppColors.disableText,
                                    ),
                                  ),
                                  Text(
                                    rental.address!,
                                    style: const TextStyle(
                                      color: AppColors.disableText,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  4.sizedBoxHeight,
                                  Row(
                                    children: [
                                      Text(
                                        rental.distance! < 1000
                                            ? '${rental.distance!.toInt()} m'
                                            : '${rental.distance! / 1000} km',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: rental.isOpen!
                                              ? AppColors.black
                                              : AppColors.disableText,
                                        ),
                                      ),
                                      10.sizedBoxWidth,
                                      LabelWidget(
                                        backgroundColor: rental.isOpen!
                                            ? AppColors.backgroundSuccess
                                            : AppColors.backgroundDanger,
                                        foreColor: rental.isOpen!
                                            ? AppColors.foregroundSuccess
                                            : AppColors.foregroundDanger,
                                        text:
                                            rental.isOpen! ? 'OPEN' : 'CLOSED',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        _selectedIndex == index && _onAnimatedContainerEnd
                            ? Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 0,
                                  horizontal: Styles.mainPadding,
                                ),
                                width: screenWidth - Styles.mainPadding,
                                height: tileHeight,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 36,
                                          height: 36,
                                          padding: const EdgeInsets.all(8),
                                          decoration: const BoxDecoration(
                                            color: AppColors.disable,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            AppImages.heartNoFill,
                                          ),
                                        ),
                                        PrimaryButtonWidget(
                                          onPressed: () => Navigator.of(context)
                                              .push(MaterialPageRoute(
                                                  builder: (context) =>
                                                      RentalOverviewPage(
                                                          rental: rental))),
                                          text: 'View',
                                          width: 80,
                                          height: 36,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
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
