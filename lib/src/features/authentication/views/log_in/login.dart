import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import './widgets/login_forms&button.dart';
import './widgets/other_login_option.dart';
import '../../../../common/styles/spacing_style.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';



class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(AppImages.darkAppLogo),
              width: AppSizes.imageThumbSize,
            ),
            Gap(AppSizes.spaceBtwSections),
            LogInFormsAndButton(),
            Gap(AppSizes.spaceBtwSections),
            OtherLogInOption()
          ],
        ),
      ),
    );
  }
}

