import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:torganic/src/common/layouts/layout_with_drawer/layout_with_drawer.dart';
import 'package:torganic/src/common/styles/skeleton_style.dart';
import 'package:torganic/src/common/widgets/buttons/app_buttons.dart';
import 'package:torganic/src/common/widgets/search_bar/search_bar.dart';
import 'package:torganic/src/common/widgets/slider/view/app_slider.dart';
import 'package:torganic/src/features/home/controller/home_controller.dart';
import 'package:torganic/src/features/home/views/home_two.dart';
import 'package:torganic/src/utils/constants/sizes.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';

import '../../../common/widgets/images/banner_image.dart';
import '../../../utils/constants/image_strings.dart';

class HomeThree extends StatelessWidget {
  const HomeThree({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    final isDark = AppHelperFunctions.isDarkMode(context);
    return AppLayoutWithDrawer(
        globalKey: controller.homeKey,
        title: const Text('Home'),
        body: ListView(
          children: [
            const AppSearchBar(),
            const Gap(AppSizes.spaceBtwItems),
            const CustomSlider(
              items: [
                AppImages.banner1,
                AppImages.banner2,
                AppImages.banner3,
              ],
            ),
            const Gap(AppSizes.spaceBtwSections),
            ShimmerHelper().buildSquareGridShimmer(isDark: isDark)
          ],
        ));
  }
}
