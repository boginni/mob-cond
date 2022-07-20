import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'linear_sample_data.dart';

class LinearChart extends StatefulWidget {
  const LinearChart({Key? key}) : super(key: key);

  @override
  State<LinearChart> createState() => _LinearChartState();
}

class _LinearChartState extends State<LinearChart> {
  @override
  Widget build(BuildContext context) {
    final series = LinearSampleData.getNumberSeries();

    final List<ChartData> chartData = [];

    // LinearSampleData.getMonth(((i / series.length) * 12).floor() + 1)

    int getDay(int i) {
      return ((i / series.length) * 365).floor() + 1;
    }

    for (int i = 0; i < series.length; i++) {
      chartData.add(ChartData(
          DateTime.parse('2022-01-01').add(Duration(days: getDay(i))),
          series[i],
          series[i] * (0.8 + i / 14.0)));
    }

    final List<Color> color = <Color>[];
    color.add(Colors.blue[50]!.withOpacity(0.3));
    color.add(Colors.blue[200]!.withOpacity(0.3));
    color.add(Colors.blue.withOpacity(0.3));

    final List<double> stops = <double>[];

    // stops.add(0.0);
    // stops.add(0.5);
    // stops.add(1.0);

    final LinearGradient gradientColors =
        LinearGradient(colors: color, stops: stops);

    //

    final List<Color> color2 = <Color>[];
    color.add(Colors.green[50]!.withOpacity(0.5));
    color.add(Colors.green[200]!.withOpacity(0.5));
    color.add(Colors.green.withOpacity(0.5));

    final List<double> stops2 = <double>[];

    // stops.add(0.0);
    // stops.add(0.5);
    // stops.add(1.0);

    final LinearGradient gradientColors2 =
        LinearGradient(colors: color2, stops: stops2);

    return Center(
      child: SfCartesianChart(
        primaryYAxis: NumericAxis(labelFormat: '{value}'),
        primaryXAxis: DateTimeAxis(
          intervalType: DateTimeIntervalType.months,
        ),
        series: <ChartSeries>[
          LineSeries<ChartData, DateTime>(
              dataSource: chartData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y),
          LineSeries<ChartData, DateTime>(
              dataSource: chartData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y2),
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.y2);

  final DateTime x;

  final double y;
  final double y2;
}
