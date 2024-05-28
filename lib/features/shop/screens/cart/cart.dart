import 'package:delivery_app_cliente/common/widgets/appbar/appbar.dart';
import 'package:delivery_app_cliente/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:delivery_app_cliente/features/shop/screens/checkout/checkout.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LAppBar(shoBackArrow: true, title: Text('Carrito', style: Theme.of(context).textTheme.headlineSmall)),
      body:const Padding(
        padding: EdgeInsets.all(LSizes.defaultSapce),

        // -- Items in cart
        child: LCartItems(),
      ),

      // -- Checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(LSizes.defaultSapce),
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()), child: const Text('Comprar \$256.0')),
      ),
    );
  }
}

