import 'package:delivery_app_cliente/common/widgets/appbar/appbar.dart';
import 'package:delivery_app_cliente/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:delivery_app_cliente/common/widgets/products/cart/coupon_widget.dart';
import 'package:delivery_app_cliente/common/widgets/succes_screen/succes_screen.dart';
import 'package:delivery_app_cliente/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:delivery_app_cliente/features/shop/screens/checkout/widgets/bildding_amount_section.dart';
import 'package:delivery_app_cliente/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:delivery_app_cliente/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:delivery_app_cliente/navigation_menu.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/image_string.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = LHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: LAppBar(shoBackArrow: true, title: Text('Tu pedido', style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(LSizes.defaultSapce),
          child: Column(
            children: [
              // -- Items in cart
              const LCartItems(showAddRemoveButtons: false),
              const SizedBox(height: LSizes.spaceBtwSection),

              // -- Cupon textfield
              const LCouponCode(),
              const SizedBox(height: LSizes.spaceBtwSection),

              // -- Billing section
              LRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(LSizes.md),
                backgroundColor: dark ? LColors.black : LColors.white,
                child: const Column(
                  children: [
                    // Precio
                    LBillingAmountSection(),
                    SizedBox(height: LSizes.spaceBtwItems),

                    // Divider
                    Divider(),
                    SizedBox(height: LSizes.spaceBtwItems),

                    // Paymant methods
                    LBillingPaymentSection(),
                    SizedBox(height: LSizes.spaceBtwItems),

                    // Address
                    LBilldingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      // Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(LSizes.defaultSapce),
        child: ElevatedButton(onPressed: () => Get.to(
          () => SuccesScreen(
            image: LImages.successfulPaymentIcon,
            title: 'Pago exitoso',
            subtitle: 'Compra efectuada con éxito. Mantente al pendiente del estado de tu pedido.',
            onPressed: () => Get.offAll(() => const NavigationMenu()),
          )), 
          child: const Text('Comprar \$256.0')),
      ),
    );
  }
}