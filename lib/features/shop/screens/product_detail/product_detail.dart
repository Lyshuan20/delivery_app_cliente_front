import 'package:delivery_app_cliente/common/widgets/texts/section_heading.dart';
import 'package:delivery_app_cliente/features/shop/screens/product_detail/widgets/bottom_add_to_cart_widget.dart';
import 'package:delivery_app_cliente/features/shop/screens/product_detail/widgets/product_attribute.dart';
import 'package:delivery_app_cliente/features/shop/screens/product_detail/widgets/product_detail_image_slider.dart';
import 'package:delivery_app_cliente/features/shop/screens/product_detail/widgets/product_meta_data.dart';
import 'package:delivery_app_cliente/features/shop/screens/product_detail/widgets/rating_share_widget.dart';
import 'package:delivery_app_cliente/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = LHelperFunctions.isDarkMode(context);    
    return Scaffold(
      bottomNavigationBar: const LBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1 - Product Image Slider
            const LProductImageSlider(),

            // 2 - Product Details
            Padding(
              padding: const EdgeInsets.only(right: LSizes.defaultSapce, left: LSizes.defaultSapce, bottom: LSizes.defaultSapce),
              child: Column(
                children: [
                  // -- Rating and share
                  const LRatingAndShare(),

                  // -- Price, title, stock and brand
                  const LProductMetaData(),

                  // -- Atributos
                  const LProductAttribute(),
                  const SizedBox(height: LSizes.spaceBtwSection),

                  // -- Checkout bottom
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text('Comprar'))),
                  const SizedBox(height: LSizes.spaceBtwSection),

                  // -- Description
                  const LSectionHeading(title: 'Descripción', showActionButton: false),
                  const SizedBox(height: LSizes.spaceBtwItems),
                  const ReadMoreText(
                    'Este es un ejemplo de una descripción, puedes poner una descripción bastante larga como por ejemplo esta, de este producto, asjdbnkjasdbkjsad',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Leer más',
                    trimExpandedText: ' Ocultar',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  
                  // -- Reviews
                  const Divider(),
                  const SizedBox(height: LSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const LSectionHeading(title: 'Comentarios(199)', showActionButton: false),
                      IconButton(icon: const Icon(Iconsax.arrow_right_3, size: 18,), onPressed: () => Get.to(() => const ProductReviewsScreen()))
                    ],
                  ),
                  const SizedBox(height: LSizes.spaceBtwSection),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
