import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:torganic/src/common/drawer/view/drawer.dart';
import 'package:torganic/src/common/layouts/layout_with_drawer/controller/layout_with_drawer_controller.dart';
import 'package:torganic/src/common/widgets/appbar/custom_app_bar.dart';
import 'package:torganic/src/utils/constants/colors.dart';

class AppLayoutWithDrawer extends StatelessWidget {
  const AppLayoutWithDrawer({

    required this.title,
    this.centerTitle = false,
    this.action,
    this.backgroundColor = AppColors.light,
    super.key});

  final Widget title;
  final bool centerTitle;
  final Color backgroundColor;
  final List<Widget>? action;


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LayoutWithDrawerController());
    return Scaffold(
      key: controller.globalKey,
      drawer: const AppDrawer(
        userName: 'User Name',
        email: 'example@email.com',),
      appBar: CustomAppBar(
        title: title,
        showBackArrow: false,
        leadingIcon: Icons.menu,
        leadingOnPress: () => controller.openDrawer(),
        centerTitle: centerTitle,
        backgroundColor: backgroundColor,
        actions: action,
      ),
    );
  }
}

