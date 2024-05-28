import 'package:delivery_app_cliente/common/widgets/login_signup/form_divider.dart';
import 'package:delivery_app_cliente/common/widgets/login_signup/social_buttons.dart';
import 'package:delivery_app_cliente/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(LSizes.defaultSapce),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Titulo
              Text(LTexts.signUpTitle, style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: LSizes.spaceBtwSection,),

              // Form
              const LSignUpForm(),
              const SizedBox(height: LSizes.spaceBtwSection,),

              // Divider
              LFormDivider(dividerTex: LTexts.orSignUpWith.capitalize!),
              const SizedBox(height: LSizes.spaceBtwSection,),

              //Social Buttons
              const LSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
