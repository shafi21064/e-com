import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:torganic/src/common/layouts/layout_with_drawer/layout_with_drawer.dart';
import 'package:torganic/src/common/widgets/buttons/app_buttons.dart';
import 'package:torganic/src/common/widgets/search_bar/search_bar.dart';
import 'package:torganic/src/common/widgets/slider/view/app_slider.dart';
import 'package:torganic/src/features/home/controller/home_controller.dart';
import 'package:torganic/src/features/home/views/home_two.dart';
import 'package:torganic/src/utils/constants/sizes.dart';

import '../../../common/widgets/images/banner_image.dart';
import '../../../utils/constants/image_strings.dart';

class HomeThree extends StatelessWidget {
  const HomeThree({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return AppLayoutWithDrawer(
      globalKey: controller.homeKey,
      title: const Text('Home'),
      body: const Column(
        children: [
          AppSearchBar(),
          Gap(AppSizes.spaceBtwItems),
          CustomSlider(items: [
            AppBannerImage(
                imgUrl: AppImages.banner1),
            AppBannerImage(
                imgUrl: AppImages.banner2),
            AppBannerImage(
                imgUrl: AppImages.banner3),
          ], )
        ],
      )
    );
  }
}
