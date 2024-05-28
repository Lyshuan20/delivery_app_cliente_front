import 'package:delivery_app_cliente/common/widgets/appbar/appbar.dart';
import 'package:delivery_app_cliente/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:delivery_app_cliente/common/widgets/icons/l_circular_icon.dart';
import 'package:delivery_app_cliente/common/widgets/images/l_rounded_image.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/image_string.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LProductImageSlider extends StatelessWidget {
  const LProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = LHelperFunctions.isDarkMode(context);
    
    return LCurvedEdgeWidget(
      child: Container(
        color: dark ? LColors.darkGrey : LColors.light,
        child: Stack(
          children: [
            // Main Large Image
            const SizedBox(
              height: 400, 
              child: Padding(
              padding: EdgeInsets.all(LSizes.productImageRadius * 2),
              child: Center(child: Image(image: AssetImage(LImages.productImage1))),
            )),
    
            // Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: LSizes.defaultSapce,
              child: SizedBox(
                height: 80,
                child: ListView.separated(                      
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(width: LSizes.spaceBtwItems),  
                  itemBuilder: (_, index) => LRoundedImage(
                    width: 80,
                    backgroundColor: dark ? LColors.dark : LColors.white,
                    border: Border.all(color: LColors.primary),
                    padding: const EdgeInsets.all(LSizes.sm),
                    imageUrl: LImages.productImage3
                  ),
                ),
              ),
            ),
    
            // Appbar icons
            const LAppBar(
              shoBackArrow: true,
              actions: [LCircularIcon(icon: Iconsax.heart5, color: Colors.red)],
            )
          ],
        ),
      ),
    );
  }
}