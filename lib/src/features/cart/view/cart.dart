import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:torganic/src/common/layouts/layout_with_drawer/layout_with_drawer.dart';
import 'package:torganic/src/common/widgets/buttons/app_buttons.dart';
import 'package:torganic/src/features/cart/controller/cart_controller.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CartController());
    return AppLayoutWithDrawer(
      globalKey: controller.cartKey,
      title: const Text('Cart'),
      body: Center(
        child: AppButtons.largeFlatFilledButton(
            onPressed: () {}, buttonText: 'buttonText'),
      ),
    );
  }
}
