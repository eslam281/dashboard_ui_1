import 'package:dashboard_ui_1/prestation/widgets/custom_card_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../date/models/graph_model.dart';
import '../../date/source/local/bar_graph_data.dart';

class BarGraphCard extends StatelessWidget {
  const BarGraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    final BarGraphData data = BarGraphData();
    return GridView.builder(
      itemCount: data.data.length,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12,
        childAspectRatio: 5/4
      ),
      itemBuilder: (context, index) {
        return CustomCard(
          padding: EdgeInsets.all(5),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(data.data[index].label,
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                ),
                SizedBox(height: 12,),
                Expanded(
                  child: BarChart(BarChartData(
                    barGroups: _chartGroups(
                      points: data.data[index].graph,
                      color: data.data[index].color
                    ),
                    borderData: FlBorderData(border: Border(),),
                    gridData: FlGridData(show: false),
                      titlesData: FlTitlesData(
                        bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: (value, meta) {
                                  return Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text(data.label[value.toInt()],
                                          style: TextStyle(
                                              fontSize: 11, color: Colors.grey,
                                          fontWeight: FontWeight.w500))
                                  );
                                })
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                          topTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                          rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        )
                      )
                  )))
              ])
        );
      }
    );
  }
  List<BarChartGroupData> _chartGroups ({required List<GraphModel> points, required Color color}){
    return points.map((ponit)
    =>BarChartGroupData(x:ponit.x.toInt(), barRods: [
      BarChartRodData(
        toY: ponit.y,
        width: 12,
        color: color.withAlpha(ponit.y.toInt()> 4? 255 :102),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(3),
          topRight: Radius.circular(3)
        )
      )
      ]),).toList();
  }
}
