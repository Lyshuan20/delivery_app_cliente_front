import 'package:delivery_app_cliente/common/widgets/icons/l_circular_icon.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LBottomAddToCart extends StatelessWidget {
  const LBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = LHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: LSizes.defaultSapce, vertical: LSizes.defaultSapce / 2),
      decoration: BoxDecoration(
        color: dark ? LColors.darkGrey : LColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(LSizes.cardRadiusLg),
          topRight: Radius.circular(LSizes.cardRadiusLg), 
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const LCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: LColors.darkGrey,
                width: 40,
                height: 40,
                color: LColors.white,
              ),
              const SizedBox(width:  LSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: LSizes.spaceBtwItems),
              const LCircularIcon(
                icon: Iconsax.add,
                backgroundColor: LColors.black,
                width: 40,
                height: 40,
                color: LColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(LSizes.md),
              backgroundColor: LColors.black,
              side: const BorderSide(color: LColors.black)
            ),
            child: const Text('Añadir al carrito'),
          ),
        ],
      ),
    );
  }
}