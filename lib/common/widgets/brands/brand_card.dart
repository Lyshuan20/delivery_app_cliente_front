import 'package:delivery_app_cliente/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:delivery_app_cliente/common/widgets/images/l_circular_image.dart';
import 'package:delivery_app_cliente/common/widgets/texts/l_brand_title_text_with_verify_icon.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/enums.dart';
import 'package:delivery_app_cliente/utils/constants/image_string.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LBrandCard extends StatelessWidget {
  const LBrandCard({
    super.key,
    this.onTap,
    required this.showBorder,
  });

  final bool showBorder;
  final void Function()? onTap; 

  @override
  Widget build(BuildContext context) {
    final isDark = LHelperFunctions.isDarkMode(context);
    return GestureDetector(
    onTap: onTap,
    // Container Design
    child: LRoundedContainer(
      showBorder: showBorder,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(LSizes.sm),      
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // -- Icon
          Flexible(
            child: LCircularImage(
              isNetworkImage: false,
              image: LImages.marcaUltraDent,
              backgroundColor: Colors.transparent,
              overlayColor: isDark ? LColors.white : LColors.black,
            ),
          ),
          const SizedBox(height: LSizes.spaceBtwItems / 2),
    
          // -- Text
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LBrandTitleWithVerifiedIcon(title: 'SuperDental', brandTextSize: TextSizes.large,),
                Text(
                  '256 productos',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}