import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../../common/widgets/app_buttons.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';


class OtherLogInOption extends StatelessWidget {
  const OtherLogInOption({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
                child: Divider(
              color: isDark ? AppColors.darkGrey : AppColors.grey,
              thickness: 0.5,
              indent: 60,
              endIndent: 5,
            )),
            Text(
              AppLocalizations.of(context)!.orLogInWith,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Flexible(
                child: Divider(
              color: isDark ? AppColors.darkGrey : AppColors.grey,
              thickness: 0.5,
              indent: 5,
              endIndent: 60,
            )),
          ],
        ),
        const Gap(AppSizes.spaceBtwItems),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButtons.smallIconButton(
                onIconPress: (){},
                iconPath: AppImages.google),
            const Gap(AppSizes.spaceBtwItems),
            AppButtons.smallIconButton(
                onIconPress: (){},
                iconPath: AppImages.facebook)
          ],
        )
      ],
    );
  }
}
