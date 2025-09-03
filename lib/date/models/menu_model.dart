import 'package:flutter/cupertino.dart';

import '../../domain/entity/menu_entity.dart';

class MenuModel{
  final IconData icon;
  final String title;

  MenuModel({
    required this.icon,
    required this.title,
  });

}
extension MenuModelExtension on MenuModel{
  MenuEntity toEntity(){
    return MenuEntity(
      icon: icon,
      title: title,
    );
  }
}