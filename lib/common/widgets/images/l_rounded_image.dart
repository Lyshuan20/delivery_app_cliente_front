import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LRoundedImage extends StatelessWidget {
  const LRoundedImage({
    super.key,
    this.border,
    this.padding,
    this.onPressed,
    this.width,
    this.height,
    this.applyImageRadius = true,
    required this.imageUrl,
    this.fit = BoxFit.contain,
    this.backgroundColor,
    this.isNetwordImage = false,
    this.borderRadius = LSizes.md
  });
  
  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetwordImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(border: border, color: backgroundColor, borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
          borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero, 
          child: Image(fit: fit, image: isNetwordImage ? NetworkImage(imageUrl) : AssetImage(imageUrl) as ImageProvider),
        ), 
      ),
    );
  }
}
