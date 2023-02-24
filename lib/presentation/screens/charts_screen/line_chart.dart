import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skyhigh/models/product.dart';
import 'package:skyhigh/state/providers/get_data_provider.dart';
import 'package:skyhigh/state/providers/list_data_provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChartScreen extends ConsumerWidget {
  const LineChartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.read(getDataProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Line Chart',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: SfCartesianChart(
            zoomPanBehavior: ZoomPanBehavior(enablePinching: true),
            // Initialize category axis
            primaryXAxis: CategoryAxis(),
            primaryYAxis:
                NumericAxis(edgeLabelPlacement: EdgeLabelPlacement.shift),
            series: <LineSeries>[
              // Initialize line series
              LineSeries<Product, String>(
                  dataSource: ref.read(showListProvider),
                  xValueMapper: (Product data, _) => data.category,
                  yValueMapper: (Product data, _) => data.profit)
            ]),
      ),
    );
  }
}
