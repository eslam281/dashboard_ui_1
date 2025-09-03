import 'package:flutter/material.dart';

import '../../core/const/constant.dart';
import '../../date/models/menu_model.dart';
import '../../date/source/local/side_menu_data.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 80,horizontal: 10),
      child: ListView.builder(
        itemCount: data.menu.length,
        itemBuilder: (context, index){
          return buildMenu( data.menu[index],index);
        }
      )
    );
  }

  Widget buildMenu(MenuModel menu,int index){
    final isSelected = selectedIndex == index;
    
    return Container(
      decoration: BoxDecoration(
      color: isSelected ? selectionColor : Colors.transparent,
         borderRadius: BorderRadius.circular(10)
      ),
      child: InkWell(
        onTap: () {
         selectedIndex = index;
          setState(() {});
        },
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
            child: Icon(menu.icon,
              color: isSelected ? Colors.black : Colors.grey),
          ),
          Text(menu.title,style: TextStyle(
              color:  isSelected ? Colors.black :Colors.grey
              ,fontSize:isSelected ?18 : 16,
              fontWeight:isSelected ?FontWeight.w700: FontWeight.normal)),
        ],),
      ),
    );
  }
}
