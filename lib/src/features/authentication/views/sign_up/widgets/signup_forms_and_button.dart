import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:torganic/src/features/authentication/views/log_in/login.dart';
import '../../widgets/auth_input_field.dart';
import '../../../../bottom_navigation/bottom_navigation.dart';
import '../../../../../common/widgets/app_buttons.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../../../utils/constants/sizes.dart';

class SignUpFormsAndButton extends StatefulWidget {
  const SignUpFormsAndButton({super.key});

  @override
  State<SignUpFormsAndButton> createState() => _SignUpFormsAndButtonState();
}

class _SignUpFormsAndButtonState extends State<SignUpFormsAndButton> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  bool obscured = true;

  onSuffixTap() {
    setState(() {
      obscured = !obscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AuthInputField(
          isDark: isDark,
          controller: _emailController,
          hingText: AppLocalizations.of(context)!.emailHintText,
          obscured: false,
        ),
        const Gap(AppSizes.spaceBtwInputFields),
        AuthInputField(
          isDark: isDark,
          controller: _passwordController,
          hingText: AppLocalizations.of(context)!.passwordHintText,
          suffixIcon: InkWell(
            onTap: () {
              onSuffixTap();
            },
            child: Icon(obscured
                ? Icons.remove_red_eye
                : Icons.remove_red_eye_outlined),
          ),
          obscured: obscured,
        ),
        const Gap(AppSizes.spaceBtwInputFields),
        AuthInputField(
          isDark: isDark,
          controller: _passwordController,
          hingText: AppLocalizations.of(context)!.passwordHintText,
          suffixIcon: InkWell(
            onTap: () {
              onSuffixTap();
            },
            child: Icon(obscured
                ? Icons.remove_red_eye
                : Icons.remove_red_eye_outlined),
          ),
          obscured: obscured,
        ),
        const Gap(AppSizes.spaceBtwSections),
        AppButtons.largeFlatFilledButton(
            onPressed: () {
              Get.offAll(const BottomNavigation());
            },
            buttonText: AppLocalizations.of(context)!.signUp),
        const Gap(AppSizes.spaceBtwItems),
        AppButtons.largeFlatOutlineButton(
            onPressed: () {
              Get.offAll(const LogIn());
            },
            buttonText: AppLocalizations.of(context)!.login)
      ],
    );
  }
}
