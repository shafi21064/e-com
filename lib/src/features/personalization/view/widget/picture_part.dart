import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:torganic/src/features/personalization/controller/user_controller.dart';
import 'package:torganic/src/utils/constants/image_strings.dart';
import 'package:torganic/src/utils/constants/sizes.dart';

class PicturePart extends StatelessWidget {
  const PicturePart({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Container(
      height: 186,
      width: 416,
      color: Colors.white,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
            ()=> Container(
                height: 85,
                width: 85,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(controller.user.value.profilePicture), fit: BoxFit.fill)),
              ),
            ),
            const Gap(AppSizes.spaceBtwItems),
            Obx(
              ()=> Text(
                controller.user.value.fullName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const Gap(AppSizes.xs),
            Obx(
              ()=> Text(
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
