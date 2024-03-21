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


class NewPasswordFormsAndButton extends StatefulWidget {
  const NewPasswordFormsAndButton({super.key});

  @override
  State<NewPasswordFormsAndButton> createState() => _NewPasswordFormsAndButtonState();
}

class _NewPasswordFormsAndButtonState extends State<NewPasswordFormsAndButton> {
  final TextEditingController _newPasswordController = TextEditingController();
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
          controller: _newPasswordController,
        validator: (value)=> AppValidator.validatePassword(value),
          hingText: AppLocalizations.of(context)!.newPasswordHintText,
          obscured: false,
        ),
        const Gap(AppSizes.spaceBtwInputFields),
        AuthInputField(
          isDark: isDark,
          controller: _confirmPasswordController,
          validator: (value)=> AppValidator.validatePassword(value),
          hingText: AppLocalizations.of(context)!.confirmPasswordHintText,
          obscured: false,
        ),

        const Gap(AppSizes.spaceBtwSections),
        AppButtons.largeFlatFilledButton(
            onPressed: () {
              Get.to(const LogIn());
            },
            buttonText: AppLocalizations.of(context)!.submit),
      ],
    );
  }
}
