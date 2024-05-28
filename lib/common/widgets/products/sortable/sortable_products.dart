import 'package:delivery_app_cliente/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:delivery_app_cliente/common/widgets/layouts/grid_layout.dart';
import 'package:delivery_app_cliente/common/widgets/products/products_cards/products_cards_vertical.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LSortableProducts extends StatelessWidget {
  const LSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Buscador
        const LSearchContainer(text: 'Buscar en la tienda', showBorder: true, showBackground: false, padding: EdgeInsets.zero),
        const SizedBox(height: LSizes.spaceBtwSection),
    
        // Productos
        LGridLayout(itemCount: 8, itemBuilder: (_, index) => const LProductCardVertical()),
      ],
    );
  }
}