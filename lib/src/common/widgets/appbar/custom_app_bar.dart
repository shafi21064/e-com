import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/constants/sizes.dart';
import 'package:torganic/src/utils/device/device_utility.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.title,
      this.actions,
      this.leadingIcon,
      this.leadingOnPress,
      required this.showBackArrow,
      required this.backgroundColor,
      this.centerTitle = false});

  final Widget? title;
  final bool showBackArrow, centerTitle;
  final Color backgroundColor;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPress;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: centerTitle,
      leading: showBackArrow
          ? IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_back,
                color: isDark ? AppColors.light : AppColors.dark,
              ))
          : IconButton(
              onPressed: leadingOnPress,
              icon: Icon(leadingIcon,
                  color: isDark ? AppColors.light : AppColors.dark)),
      title: title,
      actions: actions,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppDeviceUtils.getAppBarHeight());
}
