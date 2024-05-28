import 'package:delivery_app_cliente/common/widgets/icons/l_circular_icon.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LProductQuantityWithAddRemove extends StatelessWidget {
  const LProductQuantityWithAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        LCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: LSizes.md,
          color: LHelperFunctions.isDarkMode(context) ? LColors.white : LColors.black,
          backgroundColor: LHelperFunctions.isDarkMode(context) ? LColors.darkGrey : LColors.light,
        ),
        const SizedBox(width: LSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: LSizes.spaceBtwItems),
    
        const LCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: LSizes.md,
          color:LColors.white,
          backgroundColor: LColors.primary,
        ),
      ],
    );
  }
}