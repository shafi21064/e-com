import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import './widgets/forgot_forms&button.dart';
import '../../../../common/styles/spacing_style.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
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
