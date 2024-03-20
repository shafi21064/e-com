import 'package:flutter/material.dart';
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
            Text('Remember me',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .apply(color: isDark ? AppColors.light : AppColors.dark))
          ],
        ),
      ),
      TextButton(
        onPressed: () {
          // Navigator.pushNamed(context, AppRoute.restPassScreen);
        },
        child: Text('Forgot Password',
            style: Theme.of(context).textTheme.bodySmall),
      )
    ]);
  }
}
