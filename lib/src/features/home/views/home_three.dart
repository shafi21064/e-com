import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:torganic/src/common/layouts/gridview_layout/gridview_layout.dart';
import 'package:torganic/src/common/layouts/layout_with_drawer/layout_with_drawer.dart';
import 'package:torganic/src/common/layouts/listview_layout/listview_layout.dart';
import 'package:torganic/src/common/styles/skeleton_style.dart';
import 'package:torganic/src/common/widgets/containers/product_image.dart';
import 'package:torganic/src/common/widgets/search_bar/search_bar.dart';
import 'package:torganic/src/common/widgets/slider/view/app_slider.dart';
import 'package:torganic/src/features/home/controller/home_controller.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/constants/sizes.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';
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
          children: const [
            AppSearchBar(),
            Gap(AppSizes.spaceBtwItems),
            CustomSlider(
              items: [
                AppImages.banner1,
                AppImages.banner2,
                AppImages.banner3,
              ],
            ),
            Gap(AppSizes.spaceBtwSections),
            AppGridViewLayout(
              itemCount: 10,
              crossAxisCount: 2,
              imgUrl: 'https://cdn.shopify.com/s/files/1/0089/2931/2815/files/T-Shirt_mockup_FRONT.png?v=1709639987&width=864&height=1152&crop=center',
            )
           //  AppListViewLayout(
           //    itemCount: 10,
           //    imgUrl: AppImages.productImage5,
           //  )
          ],
        ));
  }
}
