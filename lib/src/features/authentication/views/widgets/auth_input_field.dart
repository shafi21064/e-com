import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';

class AuthInputField extends StatelessWidget {
  const AuthInputField({
    super.key,
    required this.isDark,
    required this.hingText,
    required this.controller,
    required this.obscured,
    required this.validator,
    this.suffixIcon,
  });

  final bool isDark, obscured;
  final String hingText;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final dynamic validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: obscured,
      decoration: InputDecoration(
          hintText: hingText,
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(
                  color: isDark ? AppColors.white : AppColors.darkGrey)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(color: isDark? AppColors.lightGrey : AppColors.grey)
          )
      ),
    );
  }
}
