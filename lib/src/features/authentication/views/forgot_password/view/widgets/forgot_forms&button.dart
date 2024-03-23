import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:torganic/src/features/authentication/views/forgot_password/controllers/forgot_password_controllers.dart';

import '../../../../../../common/widgets/buttons/app_buttons.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/helpers/helper_functions.dart';
import '../../../../../../utils/validators/validation.dart';
import '../../../../../bottom_navigation/bottom_navigation.dart';
import '../../../widgets/auth_input_field.dart';
import '../otp.dart';



class ForgotFormsAndButton extends StatelessWidget {
  const ForgotFormsAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    final forgotController = ForgotPasswordController.instance;
    return Form(
      key: forgotController.forgotEmailKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AuthInputField(
            isDark: isDark,
            controller: forgotController.forgotPasswordEmail,
            hingText: AppLocalizations.of(context)!.emailHintText,
            obscured: false,
            validator: (value)=> AppValidator.validateEmail(value),
          ),

          const Gap(AppSizes.spaceBtwSections),
          AppButtons.largeFlatFilledButton(
              onPressed: () {
                forgotController.sendCode();
              },
              buttonText: AppLocalizations.of(context)!.sendOtp),
        ],
      ),
    );
  }
}
