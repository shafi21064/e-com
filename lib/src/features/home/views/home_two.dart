import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:torganic/src/common/styles/spacing_style.dart';
import 'package:torganic/src/utils/constants/image_strings.dart';
import 'package:torganic/src/utils/constants/sizes.dart';
import '../../../common/widgets/images/banner_image.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../common/widgets/slider/view/app_slider.dart';


class HomeTwo extends StatelessWidget {
  const HomeTwo({super.key});
  

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: AppSpacingStyle.paddingWithAppBarHeight,
        child: CustomSlider(
          items: [
            AppBannerImage(
                padding: EdgeInsets.all(AppSizes.defaultSpace),
                imgUrl: AppImages.banner1),
            AppBannerImage(
                padding: EdgeInsets.all(AppSizes.defaultSpace),
                imgUrl: AppImages.banner2),
            AppBannerImage(
                padding: EdgeInsets.all(AppSizes.defaultSpace),
                imgUrl: AppImages.banner3),
          ],),
      ),
    );
  }
}


