import 'package:delivery_app_cliente/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/device/device_utility.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

//------- ONBOARDING DOY NAVIGATION -------
class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = LHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: LDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: LSizes.defaultSapce,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? LColors.light: LColors.dark, dotHeight: 6),
      ),
    );
  }
}