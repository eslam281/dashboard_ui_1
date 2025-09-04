import 'dart:ui';

import 'package:dashboard_ui_1/prestation/widgets/custom_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SummaryDetails extends StatelessWidget {
  const SummaryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color:  Color(0xFF2F353E),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          buildDetail("Cal",'305'),
          buildDetail("Steps",'10983'),
          buildDetail("Distance",'7km'),
          buildDetail("Sleep",'7hr'),
        ],)
    );
  }
  Widget buildDetail(String key ,String value){
    return Column(
      children: [
        Text(key,style: TextStyle(fontSize: 11,color: Colors.grey),),
        SizedBox(height: 2,),
        Text(value,style: TextStyle(fontSize: 14),),
      ],
    );
  }
}
