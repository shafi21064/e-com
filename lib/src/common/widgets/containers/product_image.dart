import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../styles/spacing_style.dart';

class AppProductImage extends StatelessWidget {
  const AppProductImage({
    this.height,
    this.width,
    this.border,
    this.onPress,
    required this.imgUrl,
    this.fit = BoxFit.contain,
    this.boarderRadius = AppSizes.md,
    this.isNetworkImage = false,
    this.backgroundColor = AppColors.light,
    super.key,
  });

  final double? height, width;
  final String imgUrl;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final bool isNetworkImage;
  final double boarderRadius;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration:
        BoxDecoration(
          color: backgroundColor,
            borderRadius: BorderRadius.circular(boarderRadius)),
        child: Padding(
          padding: AppSpacingStyle.allSIdeSpacing,
          child: ClipRRect(
              child: Image(
                image: isNetworkImage
                    ? NetworkImage(imgUrl)
                    : AssetImage(imgUrl) as ImageProvider,
                fit: fit,
              )),
        ),
      ),
    );
  }
}