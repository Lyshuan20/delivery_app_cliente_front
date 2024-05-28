import 'package:delivery_app_cliente/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:delivery_app_cliente/common/widgets/texts/section_heading.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/image_string.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LBillingPaymentSection extends StatelessWidget {
  const LBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = LHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        LSectionHeading(title: 'Metodo de pago', buttonTitle: 'Cambiar', onPressed: (){}),
        const SizedBox(height: LSizes.spaceBtwItems / 2),
        Row(
          children: [
            LRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? LColors.light : LColors.white,
              padding: const EdgeInsets.all(LSizes.sm),
              child: const Image(image: AssetImage(LImages.paypal), fit: BoxFit.contain),
            ),
            const SizedBox(height: LSizes.spaceBtwItems / 2),
            Text('PayPal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}