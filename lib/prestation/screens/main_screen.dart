import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../core/const/constant.dart';
import '../../util/responsive.dart';
import '../widgets/dashboard_widget.dart';
import '../widgets/side_menu_widget.dart';
import '../widgets/summary_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      drawer:!isDesktop?
      SizedBox(
        width: 250,
        child: SideMenuWidget(),
      ):null,

      endDrawer: Responsive.isMobile(context)?
      Container(
        color: backgroundColor,
        width: MediaQuery.of(context).size.width*0.8,
        child: SummaryWidget(),
      ):null,

      body: SafeArea(
        child: Row(
          children: [
            if(isDesktop)
            Expanded(
              flex: 2,
              child: SizedBox(child: SideMenuWidget()),
            ),
            Expanded(
              flex: 7,
              child: DashboardWidget(),
            ),
            if(isDesktop)
            Expanded(
              flex:3,
              child: SummaryWidget(),
            ),
          ],)
        ),
    );
  }
}
