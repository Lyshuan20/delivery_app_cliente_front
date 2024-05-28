import 'package:delivery_app_cliente/utils/constants/image_string.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/constants/text_string.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))],
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
              Text(LTexts.changeYouPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: LSizes.spaceBtwItems,),
              Text(LTexts.changeYouPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: LSizes.spaceBtwSection,),

              // Buttons
              SizedBox(
                width: double.infinity, 
                child: ElevatedButton(onPressed: () {}, child: const Text(LTexts.tContinue),),),
              const SizedBox(height: LSizes.spaceBtwItems,),
              SizedBox(
                width: double.infinity, 
                child: TextButton(onPressed: () {}, child: const Text(LTexts.resendEmail),),),
            ],
          ),
        ),
      ),
    );
  }
}