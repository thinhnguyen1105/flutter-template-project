import 'package:flutter/material.dart';

class IconWithBorder extends StatelessWidget {
  final Widget icon;
  IconWithBorder(this.icon);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            shape: BoxShape.circle, border: Border.all(color: Colors.white)),
        child: icon);
  }
}
