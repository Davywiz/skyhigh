import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skyhigh/models/product.dart';
import 'package:skyhigh/state/providers/get_data_provider.dart';
import 'package:skyhigh/state/providers/list_data_provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChart extends ConsumerWidget {
  const PieChart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.read(getDataProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pie Chart',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: SfCircularChart(series: <CircularSeries>[
          // Initialize pie series
          PieSeries<Product, String>(
              explodeAll: true,
              dataSource: ref.read(showListProvider),
              xValueMapper: (Product data, _) => data.orderDate,
              yValueMapper: (Product data, _) => data.quantity)
        ]),
      ),
    );
  }
}
