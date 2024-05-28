import 'package:delivery_app_cliente/common/widgets/appbar/appbar.dart';
import 'package:delivery_app_cliente/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:delivery_app_cliente/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:delivery_app_cliente/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:delivery_app_cliente/common/widgets/texts/section_heading.dart';
import 'package:delivery_app_cliente/features/personalization/screens/address/address.dart';
import 'package:delivery_app_cliente/features/personalization/screens/profile/profile.dart';
import 'package:delivery_app_cliente/features/shop/screens/cart/cart.dart';
import 'package:delivery_app_cliente/features/shop/screens/orders/order.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            LPrimaryHeaderContainer(
              child: Column(
                children: [
                  //AppBar
                  LAppBar(title: Text('Cuenta', style: Theme.of(context).textTheme.headlineMedium!.apply(color: LColors.white))),                  

                  //User profile card
                  LUserProfileTile(onPressed: () => Get.to(() => const ProfileScreen())),
                  const SizedBox(height: LSizes.spaceBtwSection),
                ],
              ),
            ),

            //Body
            Padding(
              padding: const EdgeInsets.all(LSizes.defaultSapce),
              child: Column(
                children: [
                  // Account settings
                  const LSectionHeading(title: 'Ajustes de cuenta', showActionButton: false),
                  const SizedBox(height: LSizes.spaceBtwItems),

                  LSettingsMenuTile(
                      icon: Iconsax.safe_home,
                      title: 'Mi dirección',
                      subtitle: 'Establecer la dirección de entrega',
                      onTap: () => Get.to(() => const LUserAddressScreen())
                  ),
                  LSettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'Mi carrito',
                      subtitle: 'Añade, elimina y paga productos',
                      onTap: () => Get.to(()=> const CartScreen())),
                  LSettingsMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'Mis pedidos',
                      subtitle: 'Pedidos en curso y completados',
                      onTap: () => Get.to(()=> const OrderScreen())),                      
                  const LSettingsMenuTile(icon: Iconsax.bank, title: 'Cuenta banco', subtitle: 'Retirar saldo de la cuenta bancaria'),
                  const LSettingsMenuTile(icon: Iconsax.notification, title: 'Notificaciones', subtitle: 'Establecer cualquier tipo de notificación'),
                  const LSettingsMenuTile(icon: Iconsax.security_card, title: 'Privacidad', subtitle: 'Administrar datos y cuentas conectadas'),

                  // App settings
                  const SizedBox(height: LSizes.spaceBtwSection),
                  const LSectionHeading(title: 'Ajustes de app', showActionButton: false),
                  const SizedBox(height: LSizes.spaceBtwItems),
                  const LSettingsMenuTile(icon: Iconsax.document_upload, title: 'Cargar datos', subtitle: 'Cargar datos de tu Cloud Firebase'),
                  LSettingsMenuTile(
                    icon: Iconsax.location, 
                    title: 'Ubicación', 
                    subtitle: 'Activar mi ubicación',
                    trailing: Switch(value: true, onChanged: (value){}),
                  ),

                  // Logout Button
                  const SizedBox(height: LSizes.spaceBtwSection),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Cerrar sesión')),
                  ),
                  const SizedBox(height: LSizes.spaceBtwSection * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}