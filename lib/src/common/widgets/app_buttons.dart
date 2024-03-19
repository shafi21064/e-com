import 'package:flutter/material.dart';
import 'package:torganic/src/utils/constants/sizes.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';

class AppButtons {
  static ElevatedButton smallRoundButton(
      {required VoidCallback onPressed,
      required Color buttonColor,
      required Widget buttonChild}) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(), backgroundColor: buttonColor),
        child: buttonChild);
  }

  static ElevatedButton largeFlatButton(
      {required VoidCallback onPressed,
      required Color buttonColor,
      required String buttonText}) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(AppHelperFunctions.screenWidth(), AppSizes.buttonHeight)
        ),
        child: Text(buttonText));
  }
}
