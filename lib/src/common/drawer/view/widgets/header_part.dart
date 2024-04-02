import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:torganic/src/utils/constants/sizes.dart';
import '../../../../utils/constants/image_strings.dart';

class DrawerHeaderPart extends StatelessWidget {
  const DrawerHeaderPart({
    super.key,
    required this.userName,
    required this.email,
  });

  final String userName;
  final String email;

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        child: Center(
          child: Column(
            children: [
              const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 42,
                  backgroundImage:
                  AssetImage(AppImages.google)),
              const Gap(AppSizes.sm),
              Text(userName,
                  style: Theme.of(context).textTheme.bodyLarge),
              Text(email)
            ],
          ),
        ));
  }
}

