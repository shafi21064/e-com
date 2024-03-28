import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:torganic/src/common/drawer/view/drawer.dart';
import 'package:torganic/src/common/widgets/appbar/custom_app_bar.dart';
import 'package:torganic/src/utils/constants/colors.dart';

import '../../styles/spacing_style.dart';

class AppLayoutWithBackButton extends StatelessWidget {
  const AppLayoutWithBackButton({

    required this.title,
    required this.body,
    this.centerTitle = false,
    this.action,
    this.backgroundColor = AppColors.light,
    super.key});

  final Widget title, body;
  final bool centerTitle;
  final Color backgroundColor;
  final List<Widget>? action;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: const AppDrawer(
        userName: 'User Name',
        email: 'example@email.com',),
      appBar: CustomAppBar(
        title: title,
        showBackArrow: true,
        centerTitle: centerTitle,
        backgroundColor: backgroundColor,
        actions: action,
      ),
      body: Padding(padding: AppSpacingStyle.defaultSpacing, child: body),
    );
  }
}

