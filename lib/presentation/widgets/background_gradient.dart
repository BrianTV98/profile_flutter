import 'package:flutter/material.dart';
import 'package:profile_2/untils/colors_manager.dart';

class BackGroundGradient extends StatelessWidget {
  final Widget child;

  const BackGroundGradient({this.child,Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff795548), ColorsManager.primaryColor])
      ),
      child: child,
    );
  }
}
