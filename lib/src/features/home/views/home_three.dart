import 'package:flutter/material.dart';
import 'package:torganic/src/common/layouts/layout_with_drawer/view/layout_with_drawer.dart';

class HomeThree extends StatelessWidget {
  const HomeThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppLayoutWithDrawer(
      title: Text('Home'),
    );
  }
}

