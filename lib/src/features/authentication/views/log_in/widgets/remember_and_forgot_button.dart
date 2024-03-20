import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:torganic/src/features/authentication/views/forgot/forgot.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class RememberAndForgotButton extends StatelessWidget {
  const RememberAndForgotButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Row(children: [
      Expanded(
        child: Row(
          children: [
            Checkbox(
              value: true,
              onChanged: (value) {},
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            Text(AppLocalizations.of(context)!.rememberMe,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .apply(color: isDark ? AppColors.light : AppColors.dark))
          ],
        ),
      ),
      TextButton(
        onPressed: () {
          Get.to(const ForgotPassword());
        },
        child: Text(AppLocalizations.of(context)!.forgotPassword,
            style: Theme.of(context).textTheme.bodySmall),
      )
    ]);
  }
}
