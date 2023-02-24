import 'package:flutter/material.dart';
import 'package:skyhigh/presentation/components/button_widget.dart';
import 'package:skyhigh/presentation/screens/charts_screen/line_chart.dart';
import 'package:skyhigh/presentation/screens/charts_screen/pie_chart_screen.dart';

import 'charts_screen/bar_chart_screen.dart';
import 'charts_screen/stacked_bar_series.dart';

class ShowChartScreen extends StatelessWidget {
  const ShowChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Chart',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SdButton(
              text: 'Show Bar Chart',
              bgColor: Colors.greenAccent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const BarChartScreen()),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            SdButton(
              text: 'Show Composite Bar Chart',
              bgColor: Colors.yellow,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const StackedBarChartScreen()),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            SdButton(
              text: 'Show Pie Chart',
              bgColor: Colors.pink,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const PieChart()),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            SdButton(
              text: 'Show Time Series',
              bgColor: Colors.orange,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const LineChartScreen()),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
