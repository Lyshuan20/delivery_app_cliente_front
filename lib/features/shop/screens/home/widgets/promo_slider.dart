
import 'package:carousel_slider/carousel_slider.dart';
import 'package:delivery_app_cliente/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:delivery_app_cliente/common/widgets/images/l_rounded_image.dart';
import 'package:delivery_app_cliente/features/shop/controllers/home_controller.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LPromoSlider extends StatelessWidget {
  const LPromoSlider({
    super.key, required this.banner
  });

  final List<String> banner;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index)
          ),
          items: banner.map((url) => LRoundedImage(imageUrl: url)).toList()
        ),
        const SizedBox(height: LSizes.spaceBtwItems,),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for(int i = 0; i < banner.length; i++) 
                LCircularContainer( 
                  width: 20, 
                  height: 4, 
                  margin: const EdgeInsets.only(right: 10), 
                  backgroundColor: controller.carouselCurrentindex.value == i ? LColors.primary : LColors.grey),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

