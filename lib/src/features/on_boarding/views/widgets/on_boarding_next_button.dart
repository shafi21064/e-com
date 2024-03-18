import 'package:flutter/material.dart';
import 'package:torganic/src/features/on_boarding/controlers/on_boarding_controller.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final nextButtonController = OnBoardingController.instance;
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: AppDeviceUtils.getBottomNavigationBarHeight(),
        right: AppSizes.defaultSpace,
        child: ElevatedButton(
          onPressed: () {
            nextButtonController.nextPage();
          },
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: isDark ? AppColors.primary : AppColors.dark),
          child: const Icon(Icons.arrow_forward_ios),
        ));
  }
}
