import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get_storage/get_storage.dart';
import 'package:torganic/src/common/layouts/layout_with_back_button/layout_with_back_button.dart';
import 'package:torganic/src/common/layouts/layout_with_drawer/layout_with_drawer.dart';
import 'package:torganic/src/features/feedback/controller/feedback_controller.dart';
import 'package:torganic/src/features/feedback/view/widget/trouble_checklist.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/constants/sizes.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';

class FeedbackForm extends StatelessWidget {
  const FeedbackForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FeedbackController());
    final isDark = AppHelperFunctions.isDarkMode(context);
    return AppLayoutWithBackButton(
        title: const Text('Feedback'),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Please select the type of the feedback',
                style: Theme.of(context).textTheme.bodyLarge!.apply(
                    color: isDark ? AppColors.darkGrey : AppColors.grey)),
            Obx(
                ()=> TroubleChecklist(
                title: 'Login Trouble',
                value: controller.loginTrouble.value,
                onChanged: (value){
                  controller.loginTrouble.value = !controller.loginTrouble.value;
                }
              ),
            ),
            Obx(
                ()=> TroubleChecklist(
                  title: 'Phone number related',
                  value: controller.phoneNumberTrouble.value,
                  onChanged: (value) {
                    controller.phoneNumberTrouble.value =
                        !controller.phoneNumberTrouble.value;
                  }),
            ),
            Obx(
                  ()=> TroubleChecklist(
                  title: 'Personal Profile',
                  value: controller.personalProfileTrouble.value,
                  onChanged: (value) {
                    controller.personalProfileTrouble.value =
                    !controller.personalProfileTrouble.value;
                  }),
            ),
            Obx(
                  ()=> TroubleChecklist(
                  title: 'Other Issue',
                  value: controller.otherTrouble.value,
                  onChanged: (value) {
                    controller.otherTrouble.value =
                    !controller.otherTrouble.value;
                  }),
            ),
            TextField(
              decoration: InputDecoration(

              ),
            )
          ],
        ));
  }
}
