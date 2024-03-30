import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:torganic/src/features/feedback/controller/feedback_controller.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';
import '../../../../utils/constants/colors.dart';

class TroubleChecklist extends StatelessWidget {
  const TroubleChecklist(
      {required this.title, required this.onChanged, required this.value, super.key});

  final String title;
  final dynamic onChanged;
  final bool value;

  @override
  Widget build(BuildContext context) {
    final controller = FeedbackController().instance;
    final isDark = AppHelperFunctions.isDarkMode(context);
    return  Row(
        children: [
          Checkbox(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              value: value,
              onChanged: onChanged
              ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge!.apply(
                color: value
                    ? AppColors.primary
                    : isDark
                        ? AppColors.light
                        : AppColors.dark),
          )
        ],
    );
  }
}
