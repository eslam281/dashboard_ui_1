import 'package:dashboard_ui_1/core/const/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../util/responsive.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if(!Responsive.isDesktop(context))
          InkWell(
            onTap: ()=>Scaffold.of(context).openDrawer(),
            child: Padding(
              padding: const EdgeInsets.only(right: 20,left: 4,bottom: 4),
              child: Icon(Icons.menu,color: Colors.grey,size: 25,),
            ),
          ),
        if(!Responsive.isMobile(context))
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              filled: true,
              fillColor: cardBackgroundColor,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Theme.of(context).primaryColor)
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 5),
              prefixIcon: Icon(Icons.search,color: Colors.grey,size: 21,),
            ),
          ),
        ),
        if(Responsive.isMobile(context))
          Row(
            children: [
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.search,color: Colors.grey,size: 25,)
              ),

              InkWell(
                onTap: () => Scaffold.of(context).openEndDrawer(),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(Icons.person,color: Colors.grey,size: 25,),
                ),
              )
            ],
          ),

      ],
    );
  }
}
