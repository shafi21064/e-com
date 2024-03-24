import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import '../../../../../common/styles/spacing_style.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../controllers/new_password_controller.dart';
import 'widgets/new_password_forms&button.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final newPasswordController = Get.put(NewPasswordController());
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
              AppLocalizations.of(context)!.newPassword,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Gap(AppSizes.spaceBtwSections),
            const NewPasswordFormsAndButton()
          ],
        ),
      ),
    );
  }
}
