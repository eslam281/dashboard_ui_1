import 'package:dashboard_ui_1/prestation/widgets/custom_card_widget.dart';
import 'package:flutter/material.dart';

import '../../date/source/local/schedule_task_data.dart';

class Scheduled extends StatelessWidget {
  const Scheduled({super.key});

  @override
  Widget build(BuildContext context) {
    final ScheduleTasksData data = ScheduleTasksData();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Scheduled",
          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
        SizedBox(height: 20,),
        for(var item in data.scheduled)
          CustomCard(
            color: Colors.black,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.title, style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),
                        SizedBox(height: 2,),
                        Text(item.data, style:
                        TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500),),

                      ],
                    ),
                    Icon(Icons.more)
                  ],)
                ],
              )
          )
      ],
    );
  }
}
