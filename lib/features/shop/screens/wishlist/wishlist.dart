import 'package:delivery_app_cliente/common/widgets/appbar/appbar.dart';
import 'package:delivery_app_cliente/common/widgets/icons/l_circular_icon.dart';
import 'package:delivery_app_cliente/common/widgets/layouts/grid_layout.dart';
import 'package:delivery_app_cliente/common/widgets/products/products_cards/products_cards_vertical.dart';
import 'package:delivery_app_cliente/features/shop/screens/all_products/all_products.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LAppBar(
        title: Text('Lista de deseos', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          LCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const AllProducts())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(LSizes.defaultSapce),
          child: Column(
            children: [
              LGridLayout(itemCount: 3, itemBuilder: (_, index) => const  LProductCardVertical()),
            ],
          ),
        ),
      ),
    );
  }
}