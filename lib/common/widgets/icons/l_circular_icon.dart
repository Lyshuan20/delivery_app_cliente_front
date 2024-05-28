import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LCircularIcon extends StatelessWidget {
  const LCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = LSizes.lg,
    this.onPressed,
    this.color,
    this.backgroundColor,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : LHelperFunctions.isDarkMode(context)
                ? LColors.black.withOpacity(0.9)
                : LColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),        
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size,),),
    );
  }
}