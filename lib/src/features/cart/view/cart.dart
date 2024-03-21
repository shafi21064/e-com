import 'package:flutter/material.dart';
import 'package:torganic/src/common/styles/spacing_style.dart';

import '../../../common/widgets/tab_bar/tab_bar.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: AppSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            Center(
              child: Text('Cart'),
            ),
          ],
        ),
      ),
    );
  }
}

