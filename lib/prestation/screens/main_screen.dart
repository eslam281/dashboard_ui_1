import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../core/const/constant.dart';
import '../widgets/dashboard_widget.dart';
import '../widgets/side_menu_widget.dart';
import '../widgets/summary_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: backgroundColor,),
      // drawer:Drawer(
      //   width: 200,backgroundColor: Colors.black,
      //   child: SideMenuWidget(),
      // ),drawerScrimColor: Colors.transparent,

      body: SafeArea(
        child: Row(
          children: [
            // Expanded(
            //   flex: 2,
            //   child: SizedBox(child: SideMenuWidget()),
            // ),
            // Expanded(
            //   flex: 7,
            //   child: DashboardWidget(),
            // ),
            Expanded(
              flex:3,
              child: SummaryWidget(),
            ),
          ],)
        ),
    );
  }
}
