import 'package:delivery_app_cliente/features/personalization/screens/settings/settings.dart';
import 'package:delivery_app_cliente/features/shop/screens/home/home.dart';
import 'package:delivery_app_cliente/features/shop/screens/wishlist/wishlist.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = LHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? LColors.black : LColors.white,
          indicatorColor: darkMode ? LColors.white.withOpacity(0.1) : LColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Inicio'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Favoritos'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Perfil'),
        ],),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]), 
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [const HomeScreen(), const FavouriteScreen(), const SettingsScreen()];
}