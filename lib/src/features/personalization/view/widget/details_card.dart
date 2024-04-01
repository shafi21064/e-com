import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:torganic/src/utils/constants/sizes.dart';

class DetailsCard extends StatelessWidget {
  final String cardText, imagePath;
  final Color textColor, cardColor;
  final dynamic onTap;

  const DetailsCard(
      {super.key,
      required this.imagePath,
      required this.cardText,
      this.textColor = const Color(0xff404040),
      required this.onTap,
      this.cardColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    color: const Color(0xff707070).withOpacity(.5),
                    blurRadius: 2,
                    offset: const Offset(0, 1))
              ]),
          child: Image.asset(imagePath),
        ),
        const Gap(AppSizes.spaceBtwSections),
        InkWell(
          onTap: onTap,
          child: Container(
              alignment: Alignment.centerLeft,
              height: 50,
              width: 280,
              decoration: BoxDecoration(color: cardColor, boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    //blurRadius: 2,
                    offset: const Offset(0, 2))
              ]),
              child: Text(
                cardText,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(color: textColor),
              )),
        ),
      ],
    );
  }
}
