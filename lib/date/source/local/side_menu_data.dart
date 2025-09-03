import 'package:flutter/material.dart';

import '../../models/menu_model.dart';

class SideMenuData{
  final List<MenuModel> menu = <MenuModel>[
    MenuModel(icon: Icons.home, title: 'Dashboard'),
    MenuModel(icon: Icons.person, title: 'Profile'),
    MenuModel(icon: Icons.run_circle, title: 'Exercise'),
    MenuModel(icon: Icons.settings, title: 'Settings'),
    MenuModel(icon: Icons.history, title: 'History'),
    MenuModel(icon: Icons.logout, title: 'Sign Out'),
  ];
}