import 'package:delivery_app_cliente/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LCouponCode extends StatelessWidget {
  const LCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = LHelperFunctions.isDarkMode(context);
    return LRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? LColors.dark : LColors.white,
      padding: const EdgeInsets.only(top: LSizes.sm, bottom: LSizes.sm, right: LSizes.sm, left: LSizes.md),
      child: Row(
        children: [
          // TextField
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: '¿Tienes un cupón?, Ingresalo',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
    
          // Button
          SizedBox(
            width: 80, 
            child: ElevatedButton(
              onPressed: (){}, 
              style: ElevatedButton.styleFrom(
                foregroundColor: dark ? LColors.white.withOpacity(0.5) : LColors.dark.withOpacity(0.5),
                backgroundColor: LColors.grey.withOpacity(0.2),
                side: BorderSide(color: LColors.grey.withOpacity(0.1))
              ),
              child: const Text ('Aplicar')
            ),
          ),
        ],
      ),
    );
  }
}