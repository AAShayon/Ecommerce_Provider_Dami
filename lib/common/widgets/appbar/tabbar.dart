import 'package:test_commerce/utils/constant/colors.dart';
import'package:test_commerce/utils/device/device_utility.dart';
import'package:test_commerce/utils/helpers/helper_function.dart';
import'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? AppColors.black : AppColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: AppColors.primary,
        labelColor: dark ? AppColors.white : AppColors.primary,
        unselectedLabelColor: AppColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppDeviceUtils.getAppBarHeight());
}
