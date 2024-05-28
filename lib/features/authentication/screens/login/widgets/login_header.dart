import 'package:delivery_app_cliente/utils/constants/image_string.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/constants/text_string.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LLoginHeader extends StatelessWidget {
  const LLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = LHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? LImages.darkAppLogo : LImages.lightAppLogo),
        ),
        Text(LTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
        const SizedBox(height: LSizes.sm,),
        Text(LTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium,),
      ],
    );
  }
}