import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:torganic/src/common/widgets/slider/controller/slider_controller.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../images/banner_image.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    required this.items,
    super.key,
  });

  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SliderController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CarouselSlider(
            items: items,
            options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, _) =>
                    controller.updateCurrentIndex(index),
                autoPlay: true)),

        Obx(() => AnimatedSmoothIndicator(
          activeIndex: controller.carouselCurrentIndex.value,
          count: items.length,
          effect: const WormEffect(
            activeDotColor: AppColors.primary,
            dotHeight: 6
          ),
        ) )

        //SmoothPageIndicator(controller: controller.pageController, count: items.length)
      ],
    );
  }
}
