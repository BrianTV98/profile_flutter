import 'package:flutter/material.dart';
import 'package:profile_2/untils/app_text.dart';
import 'package:profile_2/untils/colors_manager.dart';
import 'package:profile_2/untils/style_text_manager.dart';

class BottomSheetApplication extends StatelessWidget {
  const BottomSheetApplication({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient:LinearGradient(colors: [
          Color(0xff795548),
          ColorsManager.primaryColor,
        ]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Icon(Icons.email_outlined, color: Colors.white,size: 20,),
              SizedBox(width: 5,),
              Text("tranhieuglpk@gmail.com", style: StyleTextManager.subtitle1,),
            ],
          ),

          SizedBox(
            width: 20,
          ),

          Row(
            children: [
              Icon(Icons.phone, color: Colors.white,size: 20,),
              SizedBox(width: 5,),
              Text(AppText.phone, style: StyleTextManager.subtitle1,),
            ],
          ),

          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}
