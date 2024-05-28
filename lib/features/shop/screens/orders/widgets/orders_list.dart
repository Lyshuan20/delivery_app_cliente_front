import 'package:delivery_app_cliente/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LOrderListItems extends StatelessWidget {
  const LOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = LHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 5,
      separatorBuilder: (_, __) => const SizedBox(height: LSizes.spaceBtwItems),
      itemBuilder: (_, index) => LRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(LSizes.md),
        backgroundColor: dark ? LColors.dark : LColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // -- Row 1
            Row(
              children: [
                // 1 - Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: LSizes.spaceBtwItems / 2),
      
                // 2 - Status y Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Procesando',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(color: LColors.primary, fontWeightDelta: 1),
                      ),
                      Text('07 Nov 2024', style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),
      
                // 3- Icon
                IconButton(onPressed: () {}, icon: const Icon(Iconsax.arrow_right_34, size: LSizes.iconSm)),
              ],
            ),
            const SizedBox(height: LSizes.spaceBtwItems),
      
            // -- Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // 1 - Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: LSizes.spaceBtwItems / 2),
                  
                      // 2 - Status y Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Pedido',style: Theme.of(context).textTheme.labelMedium,),
                            Text('[#256f2]', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),              
      
                Expanded(
                  child: Row(
                    children: [
                      // 1 - Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: LSizes.spaceBtwItems / 2),
                  
                      // 2 - Status y Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Fecha de envio',style: Theme.of(context).textTheme.labelMedium,),
                            Text('03 Feb 2025', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}