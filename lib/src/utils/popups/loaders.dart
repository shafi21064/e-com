import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';

class AppLoaders {
  static successSnackBar({required title, message = '', duration = 3}) {
    AppHelperFunctions.getSnackBar(
        title: title,
        message: message,
        duration: duration,
        backgroundColor: AppColors.primary,
        icon: Icons.check);
  }

  static warningSnackBar({required title, message = '', duration = 3}) {
    AppHelperFunctions.getSnackBar(
        title: title,
        message: message,
        duration: duration,
        backgroundColor: AppColors.warning,
        icon: Icons.warning);
  }

  static errorSnackBar({required title, message = '', duration = 3}) {
    AppHelperFunctions.getSnackBar(
        title: title,
        message: message,
        duration: duration,
        backgroundColor: AppColors.error,
        icon: Icons.warning);
  }
}
