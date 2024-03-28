import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:torganic/src/common/layouts/layout_with_drawer/layout_with_drawer.dart';
import 'package:torganic/src/features/graph_chart/controller/graph_controller.dart';

class GraphScreen extends StatelessWidget {
  const GraphScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GraphController());
    return AppLayoutWithDrawer(
        globalKey: controller.graphKey,
        title: const Text('Graph'),
        body: BarChart(
            BarChartData(
                minY: 0,
                maxY: 100,
            )));
  }
}
