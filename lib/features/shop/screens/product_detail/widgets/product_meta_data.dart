import 'package:delivery_app_cliente/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:delivery_app_cliente/common/widgets/images/l_circular_image.dart';
import 'package:delivery_app_cliente/common/widgets/texts/l_brand_title_text_with_verify_icon.dart';
import 'package:delivery_app_cliente/common/widgets/texts/product_price_text.dart';
import 'package:delivery_app_cliente/common/widgets/texts/product_title_text.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/enums.dart';
import 'package:delivery_app_cliente/utils/constants/image_string.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LProductMetaData extends StatelessWidget {
  const LProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = LHelperFunctions.isDarkMode(context);    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price and sale price
        Row(
          children: [
            // Sale tag
            LRoundedContainer(
              radius: LSizes.sm,
              backgroundColor: LColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: LSizes.sm, vertical: LSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: LColors.black)),
            ),
            const SizedBox(width: LSizes.spaceBtwItems),

            // price
            Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: LSizes.spaceBtwItems),
            const LProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: LSizes.spaceBtwItems / 1.5),

        // Title
        const LProductTitleText(title: 'Pulidor de flujo de aire'),
        const SizedBox(height: LSizes.spaceBtwItems / 1.5),

        // Stock Status
        Row(
          children: [
            const LProductTitleText(title: 'Estatus'),
            const SizedBox(width: LSizes.spaceBtwItems / 1.5),
            Text('En stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),        
        const SizedBox(height: LSizes.spaceBtwItems / 1.5),

        // Brand
        Row(
          children: [
            LCircularImage(
              image: LImages.marcaDentaFlux,
              width: 32,
              height: 32,
              overlayColor: dark ? LColors.white : LColors.black,
            ),
            const LBrandTitleWithVerifiedIcon(title: 'SuperDental', brandTextSize: TextSizes.medium),
          ],
        )
      ],
    );
  }
}