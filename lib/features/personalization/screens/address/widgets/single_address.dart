import 'package:delivery_app_cliente/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LSingleAddress extends StatelessWidget {
  const LSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = LHelperFunctions.isDarkMode(context);
    return LRoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(LSizes.md),
      width: double.infinity,      
      backgroundColor: selectedAddress ? LColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress 
          ? Colors.transparent 
          : dark 
              ? LColors.darkGrey
              : LColors.grey,
      margin: const EdgeInsets.only(bottom: LSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? LColors.light
                      : LColors.dark.withOpacity(0.6)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jonh Doe',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: LSizes.sm / 2),
              const Text('(+123) 456 7890', maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: LSizes.sm / 2),
              const Text('82356 Timmy Coves, South Liana, Maine, 87665, USA', softWrap: true,),
            ],
          )
        ],
      ),
    );
  }
}