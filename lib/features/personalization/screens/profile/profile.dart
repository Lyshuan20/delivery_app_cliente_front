import 'package:delivery_app_cliente/common/widgets/appbar/appbar.dart';
import 'package:delivery_app_cliente/common/widgets/images/l_circular_image.dart';
import 'package:delivery_app_cliente/common/widgets/texts/section_heading.dart';
import 'package:delivery_app_cliente/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:delivery_app_cliente/utils/constants/image_string.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const LAppBar(shoBackArrow: true, title: Text('Perfil')),
      // -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(LSizes.defaultSapce),
          child: Column(
            children: [
              // profile picture
              SizedBox(
                width: double.infinity  ,
                child: Column(
                  children: [
                    const LCircularImage(image: LImages.user, width: 80, height: 80),
                    TextButton(onPressed: (){}, child: const Text('Cambiar foto de perfil')),
                  ],
                ),
              ),

              // Detalles
              const SizedBox(height: LSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: LSizes.spaceBtwItems),

              // Heading Profile info
              const LSectionHeading(title: 'Información de perfil', showActionButton: false),
              const SizedBox(height: LSizes.spaceBtwItems),

              LProfileMenu(title: 'Nombre', value: 'Lyshuan Navarro V', onPressed: (){}),
              LProfileMenu(title: 'Nom. Usuario', value: 'Lyshuan33', onPressed: (){}),

              const SizedBox(height: LSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: LSizes.spaceBtwItems),

              // Heading personal info
              const LSectionHeading(title: 'Información personal', showActionButton: false),
              const SizedBox(height: LSizes.spaceBtwItems),

              LProfileMenu(title: 'ID Usuario', value: '456689', onPressed: (){}),
              LProfileMenu(title: 'E-mail', value: 'lyshuan03_nv@hotmail.com', onPressed: (){}),
              LProfileMenu(title: 'Télefono', value: '3221168548', onPressed: (){}),
              LProfileMenu(title: 'Género', value: 'Femenino', onPressed: (){}),
              LProfileMenu(title: 'Cumpleaños', value: '14 sept, 2001', onPressed: (){}),
              const Divider(),
              const SizedBox(height: LSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Eliminar cuenta', style: TextStyle(color: Colors.red)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}