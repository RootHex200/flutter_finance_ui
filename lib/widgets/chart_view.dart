import 'package:finance_ui/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart_view extends StatelessWidget {
  const Chart_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('Sales', 230, Appcolor.sales_bg),
      ChartData('Customers', 500,Appcolor.customer_bg),
      ChartData('Products', 300,Appcolor.product_bd),
      ChartData('Revenue', 350, Appcolor.revenue_bg)
    ];
    return Center(
        child: Container(
            height: 250,
            child: SfCircularChart(
              
              legend: Legend(isVisible: true,overflowMode:LegendItemOverflowMode.wrap,
              textStyle:const  TextStyle(color: Colors.white)),
              series: <CircularSeries>[
              PieSeries<ChartData, String>(
                  dataSource: chartData,
                  
                  explodeIndex: 1,
                  explode: true,
                  pointColorMapper: (ChartData data, _) => data.color,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y,
                  dataLabelSettings: DataLabelSettings(isVisible: true)
                  ),
                
            ])));
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
