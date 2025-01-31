import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LVerticalImageText extends StatelessWidget {
  const LVerticalImageText(
      {super.key,
      required this.image,
      required this.title,
      this.textColor = LColors.white,
      this.backgroundColor,
      this.onTap });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = LHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: LSizes.spaceBtwItems),
        child: Column(
          children: [
            // Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(LSizes.sm),
              decoration: BoxDecoration(
                  color: backgroundColor ?? (dark ? LColors.black : LColors.white),
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Center(
                child: Image(image: AssetImage(image), fit: BoxFit.cover, ),
              ),
            ),
            // Text
            const SizedBox(height: LSizes.spaceBtwItems/2),
            SizedBox(
              width: 55, 
              child: Text(
                title, 
                style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
