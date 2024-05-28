import 'package:delivery_app_cliente/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

//------- ONBOARDING SKIP -------
class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: LDeviceUtils.getAppBarHeight(),
      right: LSizes.defaultSapce,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('Saltar'),
      ),
    );
  }
}