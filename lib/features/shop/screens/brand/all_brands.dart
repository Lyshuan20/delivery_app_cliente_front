import 'package:delivery_app_cliente/common/widgets/appbar/appbar.dart';
import 'package:delivery_app_cliente/common/widgets/brands/brand_card.dart';
import 'package:delivery_app_cliente/common/widgets/layouts/grid_layout.dart';
import 'package:delivery_app_cliente/common/widgets/texts/section_heading.dart';
import 'package:delivery_app_cliente/features/shop/screens/brand/brand_products.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LAppBar(title: Text('Marca'), shoBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(LSizes.defaultSapce),
          child: Column(
            children: [
              // Heading
              const LSectionHeading(title: 'Marcas', showActionButton: false),
              const SizedBox(height: LSizes.spaceBtwItems),

              // -- Brands
              LGridLayout(
                  itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) => LBrandCard(
                    showBorder: true,
                    onTap: () => Get.to(() => const BrandProducts()),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}