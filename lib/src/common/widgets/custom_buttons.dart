import 'package:flutter/material.dart';

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
}
