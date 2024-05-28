import 'package:delivery_app_cliente/common/widgets/images/l_rounded_image.dart';
import 'package:delivery_app_cliente/common/widgets/texts/l_brand_title_text_with_verify_icon.dart';
import 'package:delivery_app_cliente/common/widgets/texts/product_title_text.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/image_string.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../utils/helpers/helper_functions.dart';

class LCartItem extends StatelessWidget {
  const LCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Imagen
        LRoundedImage(
          imageUrl: LImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(LSizes.sm),
          backgroundColor: LHelperFunctions.isDarkMode(context) ? LColors.darkGrey : LColors.light,
        ),
        const SizedBox(width: LSizes.spaceBtwItems),
    
        // Title, Price and Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LBrandTitleWithVerifiedIcon(title: 'SuperDental'),
              const Flexible(child: LProductTitleText(title: 'Herramienta dental D.', maxLines: 1)),
              //Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Green ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Modelo ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Uk-564 ', style: Theme.of(context).textTheme.bodySmall),
                  ]
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}