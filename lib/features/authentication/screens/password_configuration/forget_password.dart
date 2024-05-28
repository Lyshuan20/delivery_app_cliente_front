import 'package:delivery_app_cliente/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(LSizes.defaultSapce),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            Text(LTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: LSizes.spaceBtwItems,),
            Text(LTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: LSizes.spaceBtwSection * 2,),

            // Text Field
            TextFormField(
              decoration: const InputDecoration(labelText: LTexts.email, prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: LSizes.spaceBtwSection),

            // Submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () => Get.off(() => const ResetPassword()), child: const Text(LTexts.submit))),
          ],
        ),
      ),
    );
  }
}