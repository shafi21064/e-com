import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:torganic/src/features/authentication/views/log_in/controllers/login_controller.dart';
import '../../../../../../common/widgets/buttons/app_buttons.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/helpers/helper_functions.dart';
import '../../../../../../utils/validators/validation.dart';
import '../../../../../bottom_navigation/bottom_navigation.dart';
import '../../../sign_up/view/signup.dart';
import '../../../widgets/auth_input_field.dart';
import 'remember_and_forgot_button.dart';

class LogInFormsAndButton extends StatelessWidget {
  const LogInFormsAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = LogInPageController.instance;
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Form(
      key: loginController.logInFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AuthInputField(
            isDark: isDark,
            controller: loginController.emailController,
            validator: (value) => AppValidator.validateEmail(value),
            hingText: AppLocalizations.of(context)!.emailHintText,
            obscured: false,
          ),
          const Gap(AppSizes.spaceBtwInputFields),
          Obx(
            () => AuthInputField(
              isDark: isDark,
              controller: loginController.passwordController,
              validator: (value) => AppValidator.validatePassword(value),
              hingText: AppLocalizations.of(context)!.passwordHintText,
              suffixIcon: InkWell(
                onTap: () {
                  loginController.passwordObscured.value =
                      !loginController.passwordObscured.value;
                },
                child: Icon(loginController.passwordObscured.value
                    ? Icons.remove_red_eye
                    : Icons.remove_red_eye_outlined),
              ),
              obscured: loginController.passwordObscured.value,
            ),
          ),
          const RememberAndForgotButton(),
          const Gap(AppSizes.spaceBtwSections),
          AppButtons.largeFlatFilledButton(
              onPressed: () {
                loginController.logIn();
              },
              buttonText: AppLocalizations.of(context)!.login),
          const Gap(AppSizes.spaceBtwItems),
          AppButtons.largeFlatOutlineButton(
              onPressed: () {
                Get.to(const SignUp());
              },
              buttonText: AppLocalizations.of(context)!.createAccount)
        ],
      ),
    );
  }
}
