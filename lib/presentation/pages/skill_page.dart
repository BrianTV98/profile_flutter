import 'package:flutter/material.dart';
import 'package:profile_2/untils/app_text.dart';
import 'package:profile_2/untils/colors_manager.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff795548), ColorsManager.primaryColor])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppText.androidLanguages,
            style: TextStyle(color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: EdgeInsets.only(right: 100),
                  height: 100,
                  width: 200,
                  constraints: BoxConstraints(
                      minWidth: 50,
                      maxWidth: 200
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset("assets/images/ic_flutter.png"),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 100,
                  width: 200,
                  margin: EdgeInsets.only(right: 100),
                  constraints: BoxConstraints(
                      minWidth: 50,
                      maxWidth: 200
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset("assets/images/ic_kotlin.png"),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  height: 100,
                  width: 200,
                  margin: EdgeInsets.only(right: 100),
                  constraints: BoxConstraints(
                      minWidth: 50,
                      maxWidth: 200
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset("assets/images/ic_java.jpg"),
                )
              ],
            ),
          ),

          Text(
            AppText.toolSupport,
            style: TextStyle(color: Colors.white),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: EdgeInsets.only(right: 100),
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset("assets/images/ic_figma.jpg"),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 100,
                  width: 200,
                  margin: EdgeInsets.only(right: 100),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset("assets/images/ic_photoshop.png"),
                ),
              ],
            ),
          ),

          Text(
            AppText.toolSupport,
            style: TextStyle(color: Colors.white),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 100,
                  width: 200,
                  margin: EdgeInsets.only(right: 100),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset("assets/images/mssql-database.png"),
                ),
                Container(
                  // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: EdgeInsets.only(right: 100),
                  constraints: BoxConstraints(
                    minWidth: 50,
                    maxWidth: 200
                  ),
                  decoration: BoxDecoration(
                      color: Colors.purple.shade600,
                      borderRadius: BorderRadius.circular(20)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/images/ic_net_core.png", fit: BoxFit.cover,)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
