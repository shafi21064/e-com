import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:torganic/src/features/authentication/views/forgot_password/view/new_password.dart';

import '../../../../../../common/widgets/buttons/app_buttons.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/helpers/helper_functions.dart';
import '../../../../../../utils/validators/validation.dart';
import '../../../widgets/auth_input_field.dart';



class OtpFormsAndButton extends StatefulWidget {
  const OtpFormsAndButton({super.key});

  @override
  State<OtpFormsAndButton> createState() => _OtpFormsAndButtonState();
}

class _OtpFormsAndButtonState extends State<OtpFormsAndButton> {
  final TextEditingController _otpController = TextEditingController();

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
          controller: _otpController,
          validator: (value) => AppValidator.validateEmail(value),
          hingText: AppLocalizations.of(context)!.otp,
          obscured: false,
        ),
        const Gap(AppSizes.spaceBtwSections),
        AppButtons.largeFlatFilledButton(
            onPressed: () {
              Get.to(const NewPassword());
            },
            buttonText: AppLocalizations.of(context)!.verify),
      ],
    );
  }
}
