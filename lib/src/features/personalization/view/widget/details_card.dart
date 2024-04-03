import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:torganic/src/utils/constants/sizes.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';

class DetailsCard extends StatelessWidget {
  final String cardText, imagePath;
  final Color? cardColor;
  final dynamic onTap;

  const DetailsCard(
      {super.key,
      required this.imagePath,
      required this.cardText,
      required this.onTap,
      this.cardColor});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: isDark ? AppColors.darkerGrey : AppColors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    color: isDark? AppColors.light.withOpacity(.5) : AppColors.dark.withOpacity(.5),
                    blurRadius: 2,
                    offset: const Offset(0, 1))
              ]),
          child: Image.asset(imagePath),
        ),
        const Gap(AppSizes.spaceBtwSections),
        InkWell(
          onTap: onTap,
          child: Container(
              alignment: Alignment.centerLeft,
              height: 50,
              width: 280,
              decoration: BoxDecoration(color: cardColor ?? (isDark? AppColors.dark : AppColors.white),
                  boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    offset: const Offset(0, 2))
              ]
              ),
              child: Text(
                cardText,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
              )),
        ),
      ],
    );
  }
}
