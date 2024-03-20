import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:torganic/src/features/on_boarding/views/on_boarding.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/constants/image_strings.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) =>
        Get.offAll(const OnBoarding()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: isDark? AppColors.dark : AppColors.primaryBackground,
      body: Center(
        child: Image(
          width: AppHelperFunctions.screenWidth() * .3,
          image: const AssetImage(AppImages.darkAppLogo),
        ),
      ),
    );
  }
}
