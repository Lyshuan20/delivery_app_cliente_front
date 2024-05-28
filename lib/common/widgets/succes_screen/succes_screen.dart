import 'package:delivery_app_cliente/common/styles/spacing_styles.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/constants/text_string.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SuccesScreen extends StatelessWidget {
  const SuccesScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});

  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: LSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              // Image
              Image(image: AssetImage(image), width: LHelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: LSizes.spaceBtwSection,),

              // Title y subtitle
              Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: LSizes.spaceBtwItems,),
              Text(subtitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: LSizes.spaceBtwSection,),

              // Buttons
              SizedBox(
                width: double.infinity, 
                child: ElevatedButton(onPressed: onPressed, child: const Text(LTexts.tContinue),),),
            ],
          ),
        ),
      ),
    );
  }
}