import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/image_string.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LSocialButtons extends StatelessWidget {
  const LSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: LColors.grey),
          borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: LSizes.iconMd,
              height: LSizes.iconMd,
              image: AssetImage(LImages.google),
            ),
          ),
        ),
        const SizedBox(width: LSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(border: Border.all(color: LColors.grey),
          borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: LSizes.iconMd,
              height: LSizes.iconMd,
              image: AssetImage(LImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}