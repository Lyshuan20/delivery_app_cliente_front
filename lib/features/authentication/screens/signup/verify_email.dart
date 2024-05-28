import 'package:delivery_app_cliente/common/widgets/succes_screen/succes_screen.dart';
import 'package:delivery_app_cliente/features/authentication/screens/login/login.dart';
import 'package:delivery_app_cliente/utils/constants/image_string.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/constants/text_string.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(LSizes.defaultSapce),
          child: Column(
            children: [
              // Image
              Image(image: const AssetImage(LImages.verifyIllustration), width: LHelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: LSizes.spaceBtwSection,),

              // Title y subtitle
              Text(LTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: LSizes.spaceBtwItems,),
              Text('supportM@MegaCars.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              const SizedBox(height: LSizes.spaceBtwItems,),
              Text(LTexts.confirmEmailSubtitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: LSizes.spaceBtwSection,),

              //Buttons
              SizedBox(width: double.infinity, child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccesScreen(
                        image: LImages.succesIllustration,
                        title: LTexts.yourAccountCreatedTitle,
                        subtitle: LTexts.yourAccountCreatedSubTitle,
                        onPressed: () => Get.to(() => const LoginScreen()),
                      )), child: const Text(LTexts.tContinue),),),
              const SizedBox(height: LSizes.spaceBtwItems,),
              SizedBox(width: double.infinity, child: TextButton(onPressed: () {}, child: const Text(LTexts.resendEmail),),),
            ],
          ),
        ),
      ),
    );
  }
}