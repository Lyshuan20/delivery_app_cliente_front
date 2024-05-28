import 'package:delivery_app_cliente/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:delivery_app_cliente/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:delivery_app_cliente/common/widgets/layouts/grid_layout.dart';
import 'package:delivery_app_cliente/common/widgets/products/products_cards/products_cards_vertical.dart';
import 'package:delivery_app_cliente/common/widgets/texts/section_heading.dart';
import 'package:delivery_app_cliente/features/shop/screens/brand/all_brands.dart';
import 'package:delivery_app_cliente/features/shop/screens/all_products/all_products.dart';
import 'package:delivery_app_cliente/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:delivery_app_cliente/features/shop/screens/home/widgets/home_marcas.dart';
import 'package:delivery_app_cliente/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:delivery_app_cliente/utils/constants/image_string.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // HEADER
            LPrimaryHeaderContainer(
              child: Column(
                children: [
                  // -- AppBar
                  const LHomeAppBar(),
                  const SizedBox(height: LSizes.spaceBtwSection,),

                  // -- SearchBar
                  const LSearchContainer(text: 'Buscar en la tienda',),
                  const SizedBox(height: LSizes.spaceBtwSection / 2.5),

                  // -- List Marcas
                  Padding(
                    padding: const EdgeInsets.only(left: LSizes.defaultSapce),
                    child: Column(
                      children: [

                        //Heading
                        LSectionHeading(
                          title: 'Marcas populares', 
                          textColor: Colors.white, 
                          onPressed: () => Get.to(() => const AllBrandsScreen())),

                        //Marcas
                        const LHomeMarcas()
                      ],
                    ),
                  ),
                  const SizedBox(height: LSizes.spaceBtwSection),
                ],
              ),
            ),

            // BODY
            Padding(
              padding: const EdgeInsets.all(LSizes.defaultSapce),
              child: Column(
                children: [
                  // -- Promo Slider
                  const LPromoSlider(banner: [LImages.promoBanner1, LImages.promoBanner2, LImages.promoBanner3],),
                  const SizedBox(height: LSizes.spaceBtwSection,),

                  // -- Heading
                  LSectionHeading(title: 'Productos populares', onPressed: () => Get.to(() => const AllProducts())),
                  const SizedBox(height: LSizes.spaceBtwItems,),

                  // -- Productos populares
                  LGridLayout(itemCount: 2, itemBuilder: (_, index) => const LProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}