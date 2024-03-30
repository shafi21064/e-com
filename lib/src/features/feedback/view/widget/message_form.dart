import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';

class MessageForm extends StatelessWidget {
  const MessageForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 120, // <-- TextField height
      child: TextField(
          cursorColor: AppColors.primary,
          maxLines: null,
          expands: true,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
              isCollapsed: true,
              contentPadding: EdgeInsets.all(9),
              hintText: 'Let us know more...'
          )
      ),
    );
  }
}
