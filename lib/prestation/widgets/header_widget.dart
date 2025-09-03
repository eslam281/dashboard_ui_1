import 'package:dashboard_ui_1/core/const/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
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
    );
  }
}
