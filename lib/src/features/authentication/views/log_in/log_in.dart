import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:torganic/src/common/styles/spacing_style.dart';
import 'package:torganic/src/common/widgets/app_buttons.dart';
import 'package:torganic/src/features/home/views/home.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/constants/image_strings.dart';
import 'package:torganic/src/utils/constants/sizes.dart';
import 'package:torganic/src/utils/constants/text_strings.dart';
import 'package:torganic/src/utils/device/device_utility.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widgets/auth_input_field.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AuthInputField(isDark: isDark, hingText: 'Enter your email',),
            Gap(AppHelperFunctions.screenHeight() * .01),
            AuthInputField(isDark: isDark, hingText: 'Enter your Password',),
            Gap(AppHelperFunctions.screenHeight() * .02),
            AppButtons.largeFlatButton(
                onPressed: (){}, 
                buttonColor: AppColors.primary, 
                buttonText: 'Login')
          ],
        ),
      ),
    );
  }
}


