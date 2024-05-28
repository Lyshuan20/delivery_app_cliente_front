import 'package:delivery_app_cliente/common/widgets/chips/choice_chip.dart';
import 'package:delivery_app_cliente/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:delivery_app_cliente/common/widgets/texts/product_price_text.dart';
import 'package:delivery_app_cliente/common/widgets/texts/product_title_text.dart';
import 'package:delivery_app_cliente/common/widgets/texts/section_heading.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LProductAttribute extends StatelessWidget {
  const LProductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = LHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Selected Attribute Pricing y description
        LRoundedContainer(
          padding: const EdgeInsets.all(LSizes.md),
          backgroundColor: dark ? LColors.darkGrey : LColors.grey,
          child: Column(
            children: [
              // Title, Price and stock status
              Row(
                children: [
                  const LSectionHeading(title: 'Variación', showActionButton: false),
                  const SizedBox(width: LSizes.spaceBtwItems),                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [                      
                          const LProductTitleText(title: 'Precio: ', smallSize: true),

                          // Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: LSizes.spaceBtwItems), 
                      
                          // Sale Price
                          const LProductPriceText(price: '20'),
                        ],
                      ),

                      // Stock
                      Row(
                        children: [
                          const LProductTitleText(title: 'Stock : ', smallSize: true),
                          Text('En stock', style: Theme.of(context).textTheme.titleMedium),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              // Variation Description
              const LProductTitleText(
                title: 'Esta es una descripción del producto y puedo escribir maximo 4 lineas',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: LSizes.spaceBtwItems),

        // -- Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LSectionHeading(title: 'Colores', showActionButton: false),
            const SizedBox(height: LSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                LChoiceChip(text: 'Green', selected: false, onSelected: (value){}),
                LChoiceChip(text: 'Blue', selected: true, onSelected: (value){}),
                LChoiceChip(text: 'Yellow', selected: false, onSelected: (value){}),
              ],
            ),            
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LSectionHeading(title: 'Tamaño', showActionButton: false),
            const SizedBox(height: LSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                LChoiceChip(text: 'EU 34', selected: false, onSelected: (value){}),
                LChoiceChip(text: 'EU 36', selected: true, onSelected: (value){}),
                LChoiceChip(text: 'EU 38', selected: false, onSelected: (value){}),
              ],
            ),                                    
          ],
        ),
      ],
    );
  }
}

