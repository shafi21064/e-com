import 'package:flutter/material.dart';
import 'package:torganic/src/features/on_boarding/controlers/on_boarding_controller.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final skipController = OnBoardingController.instance;
    return Positioned(
      top: AppDeviceUtils.getAppBarHeight(),
      right: AppSizes.defaultSpace,
      child: TextButton(
        onPressed: (){
          skipController.skipPage();
        },
        child: const Text('Skip'),
      ),
    );
  }
}
