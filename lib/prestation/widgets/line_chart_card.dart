import 'package:dashboard_ui_1/core/const/constant.dart';
import 'package:dashboard_ui_1/prestation/widgets/custom_card_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../date/source/local/line_chart_data.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final LineData data = LineData();
    return CustomCard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text("Steps Overview",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
        SizedBox(height: 20,),
        AspectRatio(
          aspectRatio: 16/6,
          child: LineChart(
            LineChartData(
                lineTouchData: LineTouchData(handleBuiltInTouches: true,),
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(
                    rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                    topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                    bottomTitles: AxisTitles(sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        return data.bottomTitle[value.toInt()] != null ?
                        SideTitleWidget(axisSide: meta.axisSide,
                            child: Text(data.bottomTitle[value.toInt()]!,
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey))
                        ) :
                        SizedBox();
                      },
                    )
                    ),
                    leftTitles: AxisTitles(sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      reservedSize: 40,
                      getTitlesWidget: (value, meta) {
                        return data.leftTitle[value.toInt()] != null ?
                        SideTitleWidget(axisSide: meta.axisSide,
                            child: Text(data.leftTitle[value.toInt()]!,
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey))
                        ) :
                        SizedBox();
                      },
                    ),
                    )
                ),
              borderData: FlBorderData(show: false),
              lineBarsData: [
                LineChartBarData(
                  barWidth: 2.5,
                  color:selectionColor,
                  belowBarData: BarAreaData(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        selectionColor.withAlpha(128),
                        Colors.transparent
                      ]
                    ),
                    show: true
                  ),
                  dotData: FlDotData(show: false),
                  spots: data.spots,

                )
              ],
              minX: 0,
              maxX: 120,
              maxY: 105,
              minY: -5
              )
          )
        )
      ],)
    );
  }
}
