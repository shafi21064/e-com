import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:torganic/src/features/authentication/views/sign_up/signup.dart';
import '../../widgets/auth_input_field.dart';
import '../../../../bottom_navigation/bottom_navigation.dart';
import '../../../../../common/widgets/app_buttons.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../../../utils/constants/sizes.dart';

class ForgotFormsAndButton extends StatefulWidget {
  const ForgotFormsAndButton({super.key});

  @override
  State<ForgotFormsAndButton> createState() => _ForgotFormsAndButtonState();
}

class _ForgotFormsAndButtonState extends State<ForgotFormsAndButton> {
  final TextEditingController _emailController = TextEditingController();

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

        const Gap(AppSizes.spaceBtwSections),
        AppButtons.largeFlatFilledButton(
            onPressed: () {
              Get.offAll(const BottomNavigation());
            },
            buttonText: AppLocalizations.of(context)!.sendOtp),
      ],
    );
  }
}