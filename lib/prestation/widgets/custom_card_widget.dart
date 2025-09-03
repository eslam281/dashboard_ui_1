import 'package:flutter/cupertino.dart';

import '../../core/const/constant.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  const CustomCard({super.key, required this.child, this.color, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? cardBackgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: padding ?? EdgeInsets.all(12)
        ,child: child
      ),
    );
  }
}
