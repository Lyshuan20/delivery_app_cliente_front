import 'package:delivery_app_cliente/features/shop/screens/cart/cart.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

class LCartCounterIcon extends StatelessWidget {
  const LCartCounterIcon({
    super.key,
    required this.onPressed, this.iconColor,
  });

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = LHelperFunctions.isDarkMode(context);
    final counterColor = iconColor != null ? LColors.black : (dark ? LColors.white : LColors.black);
    final counterColor2 = iconColor != null ? LColors.white : (dark ? LColors.black : LColors.white);

    return Stack(
      children: [
        IconButton(onPressed: () => Get.to(() => const CartScreen()), icon: Icon(Iconsax.shopping_bag, color: iconColor)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: counterColor,
              borderRadius: BorderRadius.circular(100)
            ),
            child: Center(
              child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(color: counterColor2, fontSizeFactor: 0.8),),
            ),
          ),
        ),
      ],
    );
  }
}
