import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../date/source/local/health_details_data.dart';
import '../../util/responsive.dart';
import 'custom_card_widget.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final HealthDetailsData healthDetailsData = HealthDetailsData();
    return GridView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: healthDetailsData.healthData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:Responsive.isMobile(context)? 2: 4,
          crossAxisSpacing:Responsive.isMobile(context)?12 : 15,
          mainAxisSpacing: 12,
        ),
        itemBuilder: (context, index) =>
            CustomCard(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(healthDetailsData.healthData[index].icon,
                  width: 30,height: 30,),
                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 5),
                  child: Text(healthDetailsData.healthData[index].value,style:
                  TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),
                ),
                Text(healthDetailsData.healthData[index].title,style:
                TextStyle(fontSize: 13,fontWeight: FontWeight.normal,color: Colors.grey)),
                ]
            ),),
    );
  }
}
