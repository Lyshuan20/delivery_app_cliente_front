import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/device/device_utility.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

class LAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LAppBar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPress,
    this.shoBackArrow = false,
  });

  final Widget? title;
  final bool shoBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPress;

  @override
  Widget build(BuildContext context) {
    final dark = LHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: LSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: shoBackArrow 
        ? IconButton(onPressed: () => Get.back(), icon: Icon(Iconsax.arrow_left, color: dark ? LColors.white : LColors.black)) 
        : leadingIcon != null ? IconButton(onPressed: leadingOnPress, icon: Icon(leadingIcon)) : null,
        title: title,
        actions: actions,
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(LDeviceUtils.getAppBarHeight());
}