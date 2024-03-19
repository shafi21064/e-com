import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';

class AuthInputField extends StatelessWidget {
  const AuthInputField({
    super.key,
    required this.isDark,
    required this.hingText
  });

  final bool isDark;
  final String hingText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hingText,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(
                  color: isDark ? AppColors.white : AppColors.dark)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(color: isDark? AppColors.lightGrey : AppColors.darkGrey)
          )
      ),
    );
  }
}
