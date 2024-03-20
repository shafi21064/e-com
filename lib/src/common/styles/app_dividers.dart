import 'package:flutter/material.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import '../../utils/helpers/helper_functions.dart';

class AppDividersStyle{
  static Container flatAppDivider = Container(
    width: AppHelperFunctions.screenWidth() * 0.3,
    color: AppColors.grey,
    height: 1,
  );
}
