
import 'package:delivery_app_cliente/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:delivery_app_cliente/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:delivery_app_cliente/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:delivery_app_cliente/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:delivery_app_cliente/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:delivery_app_cliente/utils/constants/image_string.dart';
import 'package:delivery_app_cliente/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: LImages.onBoardingImage1,
                title: LTexts.onBoardingTitle1,
                subtitle: LTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: LImages.onBoardingImage2,
                title: LTexts.onBoardingTitle2,
                subtitle: LTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: LImages.onBoardingImage3,
                title: LTexts.onBoardingTitle3,
                subtitle: LTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          
          // Skip Button
          const OnBoardingSkip(),

          // Dot Navigation SmoothPageIndicator
          const OnBoardingNavigation(),
        
          //Circular button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}