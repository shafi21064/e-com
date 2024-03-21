

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';

class FullScreenLoader{
  static void openLoadingDialog(String text, String animation){
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_)=> PopScope(
          canPop: false,
            child: Container(
              color: AppHelperFunctions.isDarkMode(Get.context!) ? AppColors.dark : AppColors.light,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 250,)

                ],
              ),
            )));
  }
}