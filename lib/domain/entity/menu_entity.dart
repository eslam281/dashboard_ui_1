import 'package:flutter/cupertino.dart';

class MenuEntity{
  final IconData icon;
  final String title;
  final bool? isSelected;

  MenuEntity({
    required this.icon,
    required this.title,
    this.isSelected = false
  });

}