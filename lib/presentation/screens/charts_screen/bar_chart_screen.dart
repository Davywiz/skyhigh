import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skyhigh/models/product.dart';
import 'package:skyhigh/state/providers/get_data_provider.dart';
import 'package:skyhigh/state/providers/list_data_provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BarChartScreen extends ConsumerWidget {
  const BarChartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.read(getDataProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bar Chart',
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
            series: <ChartSeries>[
              // Initialize line series
              BarSeries<Product, String>(
                  dataSource: ref.read(showListProvider),
                  xValueMapper: (Product data, _) => data.productId,
                  yValueMapper: (Product data, _) => data.quantity)
            ]),
      ),
    );
  }
}
