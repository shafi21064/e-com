import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:torganic/src/features/authentication/views/log_in/view/login.dart';
import 'package:torganic/src/features/authentication/views/sign_up/controllers/signup_controller.dart';
import '../../../../../../common/widgets/buttons/app_buttons.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/helpers/helper_functions.dart';
import '../../../../../../utils/validators/validation.dart';
import '../../../widgets/auth_input_field.dart';


class SignUpFormsAndButton extends StatelessWidget {
  const SignUpFormsAndButton({super.key});


  @override
  Widget build(BuildContext context) {
    final signUpController = SignUpPageController.instance;
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AuthInputField(
          isDark: isDark,
          controller: signUpController.emailController,
          validator: (value)=> AppValidator.validateEmail(value),
          hingText: AppLocalizations.of(context)!.emailHintText,
          obscured: false,
        ),
        const Gap(AppSizes.spaceBtwInputFields),
        AuthInputField(
          isDark: isDark,
          controller: signUpController.passwordController,
          validator: (value)=> AppValidator.validatePassword(value),
          hingText: AppLocalizations.of(context)!.passwordHintText,
          suffixIcon: InkWell(
            onTap: () {
              signUpController.onSuffixTap();
            },
            child: Icon(
                signUpController.obscured.value
                ? Icons.remove_red_eye
                : Icons.remove_red_eye_outlined),
          ),
          obscured: signUpController.obscured.value,
        ),
        const Gap(AppSizes.spaceBtwInputFields),
        AuthInputField(
          isDark: isDark,
          controller: signUpController.confirmPasswordController,
          validator: (value)=> AppValidator.validatePassword(value),
          hingText: AppLocalizations.of(context)!.confirmPasswordHintText,
          suffixIcon: InkWell(
            onTap: () {
              signUpController.onSuffixTap();
            },
            child: Icon(
                signUpController.obscured.value
                ? Icons.remove_red_eye
                : Icons.remove_red_eye_outlined),
          ),
          obscured: signUpController.obscured.value,
        ),
        const Gap(AppSizes.spaceBtwSections),
        AppButtons.largeFlatFilledButton(
            onPressed: () {

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
