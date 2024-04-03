import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:torganic/src/common/styles/spacing_style.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/constants/image_strings.dart';
import 'package:torganic/src/utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import 'details_card.dart';


class DetailsPart extends StatelessWidget {
  const DetailsPart({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Container(
      padding: AppSpacingStyle.allSIdeSpacing,
        //color: isDark ? AppColors.darkerGrey : AppColors.white,
      child: Column(
        children: [
          DetailsCard(
              onTap: (){},
              imagePath: AppImages.homeIcon,
              cardText: AppLocalizations.of(context)!.orderDetails,
          ),
          const Gap(AppSizes.spaceBtwItems),
          DetailsCard(
            onTap: (){},
            imagePath: AppImages.profileIcon,
            cardText: AppLocalizations.of(context)!.editProfile,
          ),
          const Gap(AppSizes.spaceBtwItems),
          DetailsCard(
            onTap: (){},
            imagePath: AppImages.addressIcon,
            cardText: AppLocalizations.of(context)!.address,
          ),
          const Gap(AppSizes.spaceBtwItems),
          DetailsCard(
            onTap: (){},
            imagePath: AppImages.translateIcon,
            cardText: AppLocalizations.of(context)!.changeLanguage,
          )
        ],
      ),
    );
  }
}