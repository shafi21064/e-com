import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:torganic/src/common/styles/spacing_style.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/constants/image_strings.dart';
import 'package:torganic/src/utils/constants/sizes.dart';
import 'package:torganic/src/utils/constants/text_strings.dart';
import 'package:torganic/src/utils/device/device_utility.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        actions: const [
          Icon(
            Icons.local_airport_sharp,
            color: Colors.white,
          ),
          Gap(10)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  AppHelperFunctions.showToast('This is Toast');
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(AppSizes.defaultSpace),
                  minimumSize:
                      const Size(AppSizes.buttonWidth, AppSizes.buttonHeight),
                ),
                child: Text(AppLocalizations.of(context)!.hi)),
          )
        ],
      ),
    );
  }
}
