import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../../../common/widgets/buttons/app_buttons.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/helpers/helper_functions.dart';
import '../../../../../../utils/validators/validation.dart';
import '../../../log_in/view/login.dart';
import '../../../widgets/auth_input_field.dart';
import '../../controllers/signup_controller.dart';

class SignUpFormsAndButton extends StatelessWidget {
  const SignUpFormsAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    final signUpController = SignUpPageController.instance;
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Form(
      key: signUpController.signupFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AuthInputField(
            isDark: isDark,
            controller: signUpController.emailController,
            validator: (value) => AppValidator.validateEmailOrPhone(value),
            hingText: AppLocalizations.of(context)!.emailOrPhoneHintText,
            obscured: false,
          ),
          const Gap(AppSizes.spaceBtwInputFields),
          Obx(
            () => AuthInputField(
              isDark: isDark,
              controller: signUpController.passwordController,
              validator: (value) => AppValidator.validatePassword(value),
              hingText: AppLocalizations.of(context)!.passwordHintText,
              suffixIcon: InkWell(
                onTap: () {
                  signUpController.passwordObscured.value =
                      !signUpController.passwordObscured.value;
                },
                child: Icon(signUpController.passwordObscured.value
                    ? Icons.remove_red_eye
                    : Icons.remove_red_eye_outlined),
              ),
              obscured: signUpController.passwordObscured.value,
            ),
          ),
          const Gap(AppSizes.spaceBtwInputFields),
          Obx(
            () => AuthInputField(
              isDark: isDark,
              controller: signUpController.confirmPasswordController,
              validator: (value) => AppValidator.validateConfirmPassword(
                  value, signUpController.passwordController),
              hingText: AppLocalizations.of(context)!.confirmPasswordHintText,
              suffixIcon: InkWell(
                onTap: () {
                  signUpController.confirmPasswordObscured.value =
                      !signUpController.confirmPasswordObscured.value;
                },
                child: Icon(signUpController.confirmPasswordObscured.value
                    ? Icons.remove_red_eye
                    : Icons.remove_red_eye_outlined),
              ),
              obscured: signUpController.confirmPasswordObscured.value,
            ),
          ),
          const Gap(AppSizes.spaceBtwSections),
          AppButtons.largeFlatFilledButton(
              onPressed: () {
                signUpController.signUp();
              },
              buttonText: AppLocalizations.of(context)!.signUp),
          const Gap(AppSizes.spaceBtwItems),
          AppButtons.largeFlatOutlineButton(
              onPressed: () {
                Get.offAll(const LogIn());
              },
              buttonText: AppLocalizations.of(context)!.login)
        ],
      ),
    );
  }
}
