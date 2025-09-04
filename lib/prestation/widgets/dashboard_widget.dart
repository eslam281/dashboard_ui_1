import 'package:dashboard_ui_1/prestation/widgets/summary_widget.dart';
import 'package:flutter/cupertino.dart';

import '../../util/responsive.dart';
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
              SizedBox(height: 18,),
              HeaderWidget(),
              SizedBox(height: 18,),
              ActivityDetailsCard(),
              SizedBox(height: 18,),
              LineChartCard(),
              SizedBox(height: 18,),
              BarGraphCard(),
              SizedBox(height: 18,),
              if(Responsive.isTablet(context))
                SummaryWidget()


            ]),
      ),
    );
  }
}
