import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:torganic/src/common/styles/spacing_style.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/constants/image_strings.dart';
import 'package:torganic/src/utils/constants/sizes.dart';
import 'details_card.dart';


class DetailsPart extends StatelessWidget {
  const DetailsPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSpacingStyle.allSIdeSpacing,
      color: Colors.white,
      child: Column(
        children: [
          DetailsCard(
              onTap: (){},
              imagePath: AppImages.homeIcon,
              cardText: 'Order Details',
              textColor: AppColors.primary
          ),
          const Gap(AppSizes.spaceBtwItems),
          DetailsCard(
            onTap: (){},
            imagePath: AppImages.profileIcon,
            cardText: 'Edit Profile',
          ),
          const Gap(AppSizes.spaceBtwItems),
          DetailsCard(
            onTap: (){},
            imagePath: AppImages.addressIcon,
            cardText: 'Address',
          ),
          const Gap(AppSizes.spaceBtwItems),
          DetailsCard(
            onTap: (){},
            imagePath: AppImages.translateIcon,
            cardText: 'Change Language',
          )
        ],
      ),
    );
  }
}