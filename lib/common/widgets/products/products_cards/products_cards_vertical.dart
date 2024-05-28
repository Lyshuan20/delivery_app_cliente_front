import 'package:delivery_app_cliente/common/styles/shadows.dart';
import 'package:delivery_app_cliente/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:delivery_app_cliente/common/widgets/icons/l_circular_icon.dart';
import 'package:delivery_app_cliente/common/widgets/images/l_rounded_image.dart';
import 'package:delivery_app_cliente/common/widgets/texts/l_brand_title_text_with_verify_icon.dart';
import 'package:delivery_app_cliente/common/widgets/texts/product_price_text.dart';
import 'package:delivery_app_cliente/common/widgets/texts/product_title_text.dart';
import 'package:delivery_app_cliente/features/shop/screens/product_detail/product_detail.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/image_string.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

class LProductCardVertical extends StatelessWidget {
  const LProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = LHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [LShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(LSizes.productImageRadius),
          color: dark ? LColors.darkGrey : LColors.white,
        ),
        child: Column(
          children: [
            // Thumbnait, whishlist button, discount Tag
            LRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(LSizes.sm),
              backgroundColor: dark ? LColors.dark : LColors.light,
              child: Stack(
                children: [
                  // Thumnail Image
                  const LRoundedImage(imageUrl: LImages.productImage1, applyImageRadius: true,),
      
                  // Sale Tag
                  Positioned(
                    top: 12,
                    child: LRoundedContainer(
                      radius: LSizes.sm,
                      backgroundColor: LColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: LSizes.sm, vertical: LSizes.xs),
                      child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: LColors.black),),
                    ),
                  ),
      
                  // -- Favorite Icon Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: LCircularIcon(icon: Iconsax.heart5, color: Colors.red,))
                ],
              ),
            ),
            const SizedBox(height: LSizes.spaceBtwItems / 2),
      
            // -- Details
            const Padding(
              padding: EdgeInsets.only(left: LSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LProductTitleText(title: 'Tool name example', smallSize: true,),
                  SizedBox(height: LSizes.spaceBtwItems / 2,),
                  LBrandTitleWithVerifiedIcon(title: 'SuperDental')
                ],
              ),
            ),
             const Spacer(),
                  
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                const Padding(
                  padding: EdgeInsets.only(left: LSizes.sm),
                  child: LProductPriceText(price: '35.0'),
                ),

                // Add to cart button
                Container(
                  decoration: const BoxDecoration(
                      color: LColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(LSizes.cardRadiusMd),
                        bottomRight: Radius.circular(LSizes.productImageRadius),
                      )),
                  child: const SizedBox(
                      width: LSizes.iconLg * 1.2,
                      height: LSizes.iconLg * 1.2,
                      child: Center(child: Icon(Iconsax.add,color: LColors.white,))
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}