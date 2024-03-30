import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:torganic/src/features/authentication/views/forgot_password/controllers/forgot_password_controllers.dart';
import '../../../../../common/styles/spacing_style.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import 'widgets/forgot_forms&button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final forgotController = Get.put(ForgotPasswordController());
    return Scaffold(
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
            Text(
              AppLocalizations.of(context)!.forgotPassword,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Gap(AppSizes.spaceBtwSections),
            const ForgotFormsAndButton()
          ],
        ),
      ),
    );
  }
}
