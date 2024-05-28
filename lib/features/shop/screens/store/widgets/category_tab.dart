import 'package:delivery_app_cliente/common/widgets/brands/brand_show_case.dart';
import 'package:delivery_app_cliente/common/widgets/layouts/grid_layout.dart';
import 'package:delivery_app_cliente/common/widgets/products/products_cards/products_cards_vertical.dart';
import 'package:delivery_app_cliente/common/widgets/texts/section_heading.dart';
import 'package:delivery_app_cliente/utils/constants/image_string.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LCategoryTab extends StatelessWidget {
  const LCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
        padding: const EdgeInsets.all(LSizes.defaultSapce),
        child: Column(
          children: [
            // -- Marcas
            const LBrandShowCase(images: [LImages.productImage1,LImages.productImage2,LImages.productImage3],),
            const SizedBox(height: LSizes.spaceBtwItems),
      
            // -- Productos
            LSectionHeading(title: 'Te puede interesar', onPressed: (){}),
            const SizedBox(height: LSizes.spaceBtwItems),
      
            LGridLayout(itemCount: 4, itemBuilder: (_, index) => const LProductCardVertical()),
            const SizedBox(height: LSizes.spaceBtwSection),
          ],
        ),
      ),
      ]
    );
  }
}
