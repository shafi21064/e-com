import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:torganic/src/features/authentication/views/sign_up/signup.dart';
import 'package:torganic/src/utils/validators/validation.dart';
import '../widgets/remember_and_forgot_button.dart';
import '../../widgets/auth_input_field.dart';
import '../../../../bottom_navigation/bottom_navigation.dart';
import '../../../../../common/widgets/app_buttons.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../../../utils/constants/sizes.dart';

class LogInFormsAndButton extends StatefulWidget {
  const LogInFormsAndButton({super.key});

  @override
  State<LogInFormsAndButton> createState() => _LogInFormsAndButtonState();
}

class _LogInFormsAndButtonState extends State<LogInFormsAndButton> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool obscured = true;

  void onSuffixTap() {
    setState(() {
      obscured = !obscured;
    });
  }

  void onLogInTap(){
    if(_emailController.text.isEmpty){
      AppHelperFunctions.showFlashBar(
        message: 'Enter Email',
        flushbarPosition: FlushbarPosition.TOP,
      );
    }else if(_passwordController.text.isEmpty){
      AppHelperFunctions.showFlashBar(
          message: 'Enter Password',
          flushbarPosition: FlushbarPosition.TOP
      );
    }else if(_passwordController.text.length < 6){
      AppHelperFunctions.showFlashBar(
          message: 'Password must be have 6 character',
          flushbarPosition: FlushbarPosition.TOP
      );
    }else{
      Get.offAll(const BottomNavigation());
    }
  }

  // void onLogInTap(){
  //   AppValidator.validateEmail(_emailController.text);
  //   AppValidator.validatePassword(_passwordController.text);
  // }

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
          validator: (value)=> AppValidator.validateEmail(value),
          hingText: AppLocalizations.of(context)!.emailHintText,
          obscured: false,
        ),
        const Gap(AppSizes.spaceBtwInputFields),
        AuthInputField(
          isDark: isDark,
          controller: _passwordController,
          validator: (value)=> AppValidator.validatePassword(value),
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
        const RememberAndForgotButton(),
        const Gap(AppSizes.spaceBtwSections),
        AppButtons.largeFlatFilledButton(
            onPressed: () {
              onLogInTap();
            },
            buttonText: AppLocalizations.of(context)!.login),
        const Gap(AppSizes.spaceBtwItems),
        AppButtons.largeFlatOutlineButton(
            onPressed: () {
              Get.to(const SignUp());
            },
            buttonText: AppLocalizations.of(context)!.createAccount)
      ],
    );
  }
}
