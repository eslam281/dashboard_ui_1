import 'package:dashboard_ui_1/prestation/widgets/pie_chart_widget.dart';
import 'package:dashboard_ui_1/prestation/widgets/summary_details.dart';
import 'package:flutter/cupertino.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20,),
          Chart(),
          SizedBox(height: 20,),
          Text("Summary",
            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SummaryDetails(),
          ),
          SizedBox(height: 40,),
          Scheduled()
        ],
      ),
    );
  }
}
