import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../../../../common/styles/spacing_style.dart';
import '../../../../utils/constants/sizes.dart';
import '../../controller/user_controller.dart';


class PicturePart extends StatelessWidget {
  const PicturePart({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Container(
      padding: AppSpacingStyle.allSIdeSpacing,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Container(
                height: 85,
                width: 85,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image:
                            NetworkImage(controller.user.value.profilePicture),
                        fit: BoxFit.fill)),
              ),
            ),
            const Gap(AppSizes.spaceBtwItems),
            Obx(
              () => Text(
                controller.user.value.fullName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const Gap(AppSizes.xs),
            Obx(
              () => Text(
                controller.user.value.email,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
