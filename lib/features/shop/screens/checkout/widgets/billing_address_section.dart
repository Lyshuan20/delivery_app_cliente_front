import 'package:delivery_app_cliente/common/widgets/texts/section_heading.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LBilldingAddressSection extends StatelessWidget {
  const LBilldingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LSectionHeading(title: 'Dirrección de envío', buttonTitle: 'Cambiar', onPressed: (){}),
        Text('Lyshuan Navarro V.', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: LSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: LSizes.spaceBtwItems),
            Text('+(123) 456 7890', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: LSizes.spaceBtwItems / 2),

        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: LSizes.spaceBtwItems),
            Expanded(child: Text('South Liana, Maine 87695, USA', style: Theme.of(context).textTheme.bodyMedium)),
          ],
        ),
        const SizedBox(height: LSizes.spaceBtwItems / 2),
      ],
    );
  }
}