import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';
import '../../widgets/containers/product_image.dart';


class AppListViewLayout extends StatelessWidget {
  const AppListViewLayout(
      {required this.itemCount, required this.imgUrl, super.key});

  final int itemCount;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
            child: AppProductImage(
                imgUrl: imgUrl),
          );
        });
  }
}
