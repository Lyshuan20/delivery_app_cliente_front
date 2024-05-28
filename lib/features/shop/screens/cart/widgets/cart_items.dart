import 'package:delivery_app_cliente/common/widgets/products/cart/add_remove_cart.dart';
import 'package:delivery_app_cliente/common/widgets/products/cart/cart_item.dart';
import 'package:delivery_app_cliente/common/widgets/texts/product_price_text.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LCartItems extends StatelessWidget {
  const LCartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) => const SizedBox(height: LSizes.spaceBtwSection),
      itemBuilder: (_, index) => Column(
        children: [
          // CArt Item
          const LCartItem(),
          if(showAddRemoveButtons) const SizedBox(height: LSizes.spaceBtwItems),

          // Add Remove Buttons row with total Price
          if(showAddRemoveButtons)          
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Extra Space
                  SizedBox(width: 70),
                  // Add Remove Buttons
                  LProductQuantityWithAddRemove(),
                ],
              ),
              // -- Product Total Price
              LProductPriceText(price: '256'),                            
              ],
            ),
        ],
      ),
    );
  }
}