import 'package:flutter/cupertino.dart';

import 'activity_details_card.dart';
import 'bar_graph_widget.dart';
import 'header_widget.dart';
import 'line_chart_card.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
            children: [
          SizedBox(height: 20,),
          HeaderWidget(),
          SizedBox(height: 20,),
          ActivityDetailsCard(),
          SizedBox(height: 20,),
          LineChartCard(),
          SizedBox(height: 20,),
          BarGraphCard(),
      
        ]),
      ),
    );
  }
}
