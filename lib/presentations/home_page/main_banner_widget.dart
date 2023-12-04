import 'package:cyclego/constants/constants.dart';
import 'package:cyclego/presentations/home_page/rental_explore_page/rental_explore_page.dart';
import 'package:cyclego/utils/extensions/sized_box.dart';
import 'package:flutter/material.dart';

import '../shared_widgets/image_box_widget.dart';

class MainBannerWidget extends StatefulWidget {
  const MainBannerWidget({super.key});

  @override
  State<MainBannerWidget> createState() => _MainBannerWidgetState();
}

class _MainBannerWidgetState extends State<MainBannerWidget>
    with TickerProviderStateMixin {
  late AnimationController _controller1;
  late AnimationController _controller2;
  late Animation<Offset> _xAnimation1;
  late Animation<Offset> _yAnimation1;
  late Animation<Offset> _xAnimation2;
  late Animation<Offset> _yAnimation2;
  late Animation<Offset> _xAnimation3;
  late Animation<Offset> _yAnimation3;
  late Animation<Offset> _xAnimation4;
  late Animation<Offset> _yAnimation4;

  @override
  void initState() {
    super.initState();
    _controller1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _controller2 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _xAnimation1 = Tween<Offset>(
      begin: const Offset(-0.04, 0),
      end: const Offset(0.04, 0),
    ).animate(_controller1);

    _yAnimation1 = Tween<Offset>(
      begin: const Offset(0, -0.04),
      end: const Offset(0, 0.04),
    ).animate(_controller2);

    _xAnimation2 = Tween<Offset>(
      begin: const Offset(-0.02, 0),
      end: const Offset(0.02, 0),
    ).animate(_controller2);

    _yAnimation2 = Tween<Offset>(
      begin: const Offset(0, -0.02),
      end: const Offset(0, 0.02),
    ).animate(_controller1);

    _xAnimation3 = Tween<Offset>(
      begin: const Offset(-0.06, 0),
      end: const Offset(0.06, 0),
    ).animate(_controller1);

    _yAnimation3 = Tween<Offset>(
      begin: const Offset(0, -0.06),
      end: const Offset(0, 0.06),
    ).animate(_controller2);

    _xAnimation4 = Tween<Offset>(
      begin: const Offset(-0.03, 0),
      end: const Offset(0.03, 0),
    ).animate(_controller2);

    _yAnimation4 = Tween<Offset>(
      begin: const Offset(0, -0.03),
      end: const Offset(0, 0.03),
    ).animate(_controller1);
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller1
      ..reset()
      ..repeat(reverse: true);

    _controller2
      ..reset()
      ..repeat(reverse: true);

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: Styles.mainPadding,
          ),
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const RentalExplorePage(),
                ),
              ),
              borderRadius: BorderRadius.circular(Styles.mainRadius),
              child: Ink(
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
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 240,
          child: Stack(
            children: [
              Positioned(
                right: 8,
                child: SlideTransition(
                  position: _xAnimation1,
                  child: SlideTransition(
                    position: _yAnimation1,
                    child: const ImageBoxWidget(
                      width: 80,
                      height: 80,
                      image: AppImages.personCycle1,
                      color: AppColors.whiteBackgroundImage,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 80,
                right: 90,
                child: SlideTransition(
                  position: _xAnimation2,
                  child: SlideTransition(
                    position: _yAnimation2,
                    child: const ImageBoxWidget(
                      width: 90,
                      height: 90,
                      image: AppImages.personCycle2,
                      color: AppColors.yellowBackgroundImage,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 82,
                child: SlideTransition(
                  position: _xAnimation4,
                  child: SlideTransition(
                    position: _yAnimation4,
                    child: const ImageBoxWidget(
                      width: 50,
                      height: 50,
                      image: AppImages.personCycle4,
                      color: AppColors.greenBackgroundImage,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 30,
                bottom: 0,
                child: SlideTransition(
                  position: _xAnimation3,
                  child: SlideTransition(
                    position: _yAnimation3,
                    child: const ImageBoxWidget(
                      width: 68,
                      height: 68,
                      image: AppImages.personCycle5,
                      color: AppColors.blueBackgroundImage,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
