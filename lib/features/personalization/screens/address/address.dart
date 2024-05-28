import 'package:delivery_app_cliente/common/widgets/appbar/appbar.dart';
import 'package:delivery_app_cliente/features/personalization/screens/address/add_new_address.dart';
import 'package:delivery_app_cliente/features/personalization/screens/address/widgets/single_address.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LUserAddressScreen extends StatelessWidget {
  const LUserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: LColors.primary,
        onPressed: () => Get.to(() => const LAddNewAddressScreen()),
        child: const Icon(Iconsax.add, color: LColors.white),        
      ),
      appBar: LAppBar(
        shoBackArrow: true,
        title: Text('Direcciones', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(LSizes.defaultSapce),
            child: Column(
              children: [
                LSingleAddress(selectedAddress: false),
                LSingleAddress(selectedAddress: false),
                LSingleAddress(selectedAddress: true),
                LSingleAddress(selectedAddress: false),
                LSingleAddress(selectedAddress: false),           
              ],
            ),
        ),
      ),
    );
  }
}