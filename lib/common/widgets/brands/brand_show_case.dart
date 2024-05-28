import 'package:delivery_app_cliente/common/widgets/brands/brand_card.dart';
import 'package:delivery_app_cliente/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LBrandShowCase extends StatelessWidget {
  const LBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return LRoundedContainer(
      showBorder: true,
      borderColor: LColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(LSizes.md),
      margin: const EdgeInsets.only(bottom: LSizes.spaceBtwItems),
      child: Column(
        children: [
          // Brand Whith products count
          const LBrandCard(showBorder: false),
          const SizedBox(height: LSizes.spaceBtwItems),
    
          // Brand top 3 products
          Row(children: images.map((image) => brandTopProductImageWidget(image, context)).toList()),
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context){
  return Expanded(
    child: LRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(LSizes.md),
      margin: const EdgeInsets.only(right: LSizes.sm),
      backgroundColor: LHelperFunctions.isDarkMode(context) ? LColors.darkGrey : LColors.light,
      child: Image(fit: BoxFit.contain, image: AssetImage(image)),
    ) 
  );
}

