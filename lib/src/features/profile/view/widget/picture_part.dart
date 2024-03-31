import 'package:flutter/material.dart';
import 'package:torganic/src/utils/constants/image_strings.dart';

class PicturePart extends StatelessWidget {
  const PicturePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 186,
      width: 416,
      color: Colors.white,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 85,
              width: 85,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(AppImages.google), fit: BoxFit.fill)),
            ),
            Text(
              'User Name',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'Email@example.com',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
      ),
    );
  }
}
