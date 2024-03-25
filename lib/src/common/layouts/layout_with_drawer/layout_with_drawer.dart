import 'package:flutter/material.dart';
import 'package:torganic/src/common/styles/spacing_style.dart';
import '../../../utils/constants/colors.dart';
import '../../drawer/view/drawer.dart';
import '../../widgets/appbar/custom_app_bar.dart';

class AppLayoutWithDrawer extends StatelessWidget {
  const AppLayoutWithDrawer(
      {required this.title,
      required this.body,
      required this.globalKey,
      this.centerTitle = false,
      this.action,
      this.backgroundColor = AppColors.light,
      super.key});

  final Widget title, body;
  final bool centerTitle;
  final Color backgroundColor;
  final List<Widget>? action;
  final dynamic globalKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      drawer: const AppDrawer(
        userName: 'User Name',
        email: 'example@email.com',
      ),
      appBar: CustomAppBar(
        title: title,
        showBackArrow: false,
        leadingIcon: Icons.menu,
        leadingOnPress: () => globalKey.currentState!.openDrawer(),
        centerTitle: centerTitle,
        backgroundColor: backgroundColor,
        actions: action,
      ),
      body: Padding(padding: AppSpacingStyle.defaultSpacing, child: body),
    );
  }
}
