import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:torganic/src/features/authentication/views/log_in/controllers/login_controller.dart';
import '../../widgets/other_login_option.dart';
import '../../../../../common/styles/spacing_style.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import 'widgets/login_forms&button.dart';


class LogIn extends StatelessWidget {
  const LogIn({super.key});
  @override
  Widget build(BuildContext context) {
    final logInController = Get.put(LogInPageController());
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
            padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage(AppImages.darkAppLogo),
                width: AppSizes.imageThumbSize,
              ),
              const Gap(AppSizes.spaceBtwSections),
              const LogInFormsAndButton(),
              const Gap(AppSizes.spaceBtwSections),
              OtherLogInOrSignUpOption(
                title: AppLocalizations.of(context)!.orLogInWith,
              )
            ],
          ),
        ),
      ),
    );
  }
}

