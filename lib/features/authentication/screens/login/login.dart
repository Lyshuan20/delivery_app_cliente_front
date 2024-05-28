import 'package:delivery_app_cliente/common/styles/spacing_styles.dart';
import 'package:delivery_app_cliente/common/widgets/login_signup/form_divider.dart';
import 'package:delivery_app_cliente/common/widgets/login_signup/social_buttons.dart';
import 'package:delivery_app_cliente/features/authentication/screens/login/widgets/login_form.dart';
import 'package:delivery_app_cliente/features/authentication/screens/login/widgets/login_header.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: LSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo, titulo y subtitulo
              const LLoginHeader(),

              // Form
              const LLoginForm(),

              // Divider
              LFormDivider(dividerTex: LTexts.orSignInWith.capitalize!,),
              const SizedBox(height: LSizes.spaceBtwSection,),
              // Footer
              const LSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


