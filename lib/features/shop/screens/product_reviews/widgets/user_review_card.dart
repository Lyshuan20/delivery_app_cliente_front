import 'package:delivery_app_cliente/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:delivery_app_cliente/common/widgets/products/ratings/rating_indicator.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/image_string.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class LUserReviewCard extends StatelessWidget {
  const LUserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = LHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(LImages.user)),
                const SizedBox(width: LSizes.spaceBtwItems),
                Text('Lyshuan Navarro', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: LSizes.spaceBtwItems),

        // Reviews
        Row(
          children: [
            const LRatingBarIndicator(rating: 4),
            const SizedBox(width: LSizes.spaceBtwItems),
            Text('01 Nov, 2024', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: LSizes.spaceBtwItems),
        const ReadMoreText(
          'Este es un ejemplo de una review de un usuario, solo pongo texto, puedo dar clic a leer mas o menos. Ejemplo. Esto es texto de relleno.',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' Leer Menos',
          trimCollapsedText: ' Leer Más',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: LColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: LColors.primary),
        ),
        const SizedBox(height: LSizes.spaceBtwItems),

        //Company Reviews
        LRoundedContainer(
          backgroundColor: dark ? LColors.darkGrey : LColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(LSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tool Store', style: Theme.of(context).textTheme.bodyLarge),
                    Text('02 Nov, 2024', style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: LSizes.spaceBtwItems),
                const ReadMoreText(
                  'Este es un ejemplo de una review de un usuario, solo pongo texto, puedo dar clic a leer mas o menos. Ejemplo. Esto es texto de relleno.',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' Leer Menos',
                  trimCollapsedText: ' Leer Más',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: LColors.primary),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: LColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: LSizes.spaceBtwSection),
      ],
    );
  }
}