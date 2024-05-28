
import 'package:delivery_app_cliente/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:delivery_app_cliente/features/shop/screens/all_products/all_products.dart';
import 'package:delivery_app_cliente/utils/constants/image_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LHomeMarcas extends StatelessWidget {
  const LHomeMarcas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return LVerticalImageText(image: LImages.marcaDentsphySirona, title: 'Marca', onTap: () => Get.to(() => const AllProducts()));
        },
      ),
    );
  }
}