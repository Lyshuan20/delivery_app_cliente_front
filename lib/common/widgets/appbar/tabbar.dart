import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/device/device_utility.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LTabBar extends StatelessWidget implements PreferredSizeWidget{
  const LTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = LHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? LColors.black : LColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: false,
        indicatorColor: LColors.primary,
        labelColor: dark ? LColors.white : LColors.primary,
        unselectedLabelColor: LColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(LDeviceUtils.getAppBarHeight() );

}