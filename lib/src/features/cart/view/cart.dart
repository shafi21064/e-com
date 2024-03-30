import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:torganic/src/common/layouts/layout_with_drawer/layout_with_drawer.dart';
import 'package:torganic/src/common/widgets/buttons/app_buttons.dart';
import 'package:torganic/src/features/cart/controller/cart_controller.dart';
import 'package:torganic/src/features/pdf_viewer/view/pdf_screen.dart';
import 'package:torganic/src/features/video_player/view/video_player.dart';
import 'package:torganic/src/features/web_view/web_view.dart';
import 'package:torganic/src/utils/constants/sizes.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CartController());
    return AppLayoutWithDrawer(
      globalKey: controller.cartKey,
      title: const Text('Cart'),
      body: RefreshIndicator(
        onRefresh: (){
          return Future.delayed(const Duration(seconds: 5));
        },
        child: ListView(
          children: [
            AppButtons.largeFlatFilledButton(
              onPressed: () {
                Get.to(() => const PdfScreen(
                      pdfUrl: 'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
                    ));
              },
              buttonText: 'Show pdf'),
            const Gap(AppSizes.spaceBtwItems),
            AppButtons.largeFlatFilledButton(
                onPressed: () {
                  Get.to(() =>  News(
                    newsUrl: 'https://www.google.com/',
                  ));
                },
                buttonText: 'Show web'),
            const Gap(AppSizes.spaceBtwItems),
            AppButtons.largeFlatFilledButton(
                onPressed: () {
                  Get.to(() => const VideoApp());
                },
                buttonText: 'Show video')
          ]
        ),
      ),
    );
  }
}
