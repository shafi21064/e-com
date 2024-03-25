import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'features/authentication/views/log_in/view/login.dart';
import 'features/on_boarding/views/on_boarding.dart';
import 'utils/constants/colors.dart';
import 'utils/constants/image_strings.dart';
import 'utils/helpers/helper_functions.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  changeScreen() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final isNotFirst = sharedPreferences.getBool('isNotFirst');

    if (isNotFirst == null ) {
      Future.delayed(const Duration(seconds: 3), () {
        Get.offAll(const OnBoarding());
      });
    } else if (isNotFirst == true) {
      Future.delayed(const Duration(seconds: 3), () {
        Get.offAll(const LogIn());
      });
    }

  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: isDark ? AppColors.dark : AppColors.primaryBackground,
      body: Center(
        child: Image(
          width: AppHelperFunctions.screenWidth() * .3,
          image: const AssetImage(AppImages.darkAppLogo),
        ),
      ),
    );
  }
}
