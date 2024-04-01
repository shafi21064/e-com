import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:torganic/src/features/authentication/views/log_in/controllers/login_controller.dart';
import 'package:torganic/src/utils/local_storage/local_storage_keys.dart';
import 'package:torganic/src/utils/local_storage/storage_utility.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/helpers/helper_functions.dart';
import '../../../forgot_password/view/forgot.dart';

class RememberAndForgotButton extends StatelessWidget {
  const RememberAndForgotButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final loginController = LogInPageController.instance;
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Row(children: [
      Expanded(
        child: Row(
          children: [
            Obx(
              () => Checkbox(
                value: loginController.rememberMe.value,
                onChanged: (value) {
                  loginController.rememberMe.value =
                      !loginController.rememberMe.value;
                },
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
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
