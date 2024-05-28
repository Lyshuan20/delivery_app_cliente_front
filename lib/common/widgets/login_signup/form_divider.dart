import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LFormDivider extends StatelessWidget {
  const LFormDivider({
    super.key, required this.dividerTex,
  });

  final String dividerTex;

  @override
  Widget build(BuildContext context) {
    final dark = LHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? LColors.darkGrey : LColors.grey, thickness: 0.5, indent: 60, endIndent: 5),),
        Text(dividerTex, style: Theme.of(context).textTheme.labelMedium,),
        Flexible(child: Divider(color: dark ? LColors.darkGrey : LColors.grey, thickness: 0.5, indent: 5, endIndent: 60),),
      ],
    );
  }
}