import 'package:delivery_app_cliente/features/authentication/screens/signup/verify_email.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/constants/text_string.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LSignUpForm extends StatelessWidget {
  const LSignUpForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = LHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(labelText: LTexts.firstName,prefixIcon: Icon(Iconsax.user)),
                  ),
              ),
              const SizedBox(width: LSizes.spaceBtwInputFields,),
              Expanded(
                child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(labelText: LTexts.lastName,prefixIcon: Icon(Iconsax.user)),
                  ),
              ),
            ],
          ),
          const SizedBox(height: LSizes.spaceBtwInputFields,),
    
          // Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(labelText: LTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: LSizes.spaceBtwInputFields,),
    
          // Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(labelText: LTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: LSizes.spaceBtwInputFields,),
    
          // Phone Number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(labelText: LTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: LSizes.spaceBtwInputFields,),
    
          // Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: LTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: LSizes.spaceBtwInputFields,),
    
          //Termni y condiciones
          Row(
            children: [
              SizedBox(width: 24,height: 24, child:Checkbox(value: true, onChanged: (value) {})),
              const SizedBox(width: LSizes.spaceBtwItems,),
              Text.rich(
                TextSpan(children: [
                  TextSpan(text: '${LTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: LTexts.termsOfUs, style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? LColors.white : LColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? LColors.white : LColors.primary,
                  )),
                ]),
              ),
            ],
          ),
          const SizedBox(height: LSizes.spaceBtwSection,),
    
          //Signup button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()), child: const Text(LTexts.createAccount),),)
        ],
      ),
    );
  }
}