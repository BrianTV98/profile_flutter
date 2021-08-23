import 'package:flutter/material.dart';
import 'package:profile_2/untils/app_text.dart';
import 'package:profile_2/untils/colors_manager.dart';
import 'package:profile_2/untils/style_text_manager.dart';

import 'avatar.dart';

class AppBarApplication extends StatelessWidget implements PreferredSizeWidget {
  const AppBarApplication({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff795548),
            ColorsManager.primaryColor,
          ]
        )
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AvatarImage(),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          AppText.myName,
                          style: StyleTextManager.title1,
                        ),
                        Text(
                          AppText.birthDay,
                          style: StyleTextManager.title1,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  AppText.flutterDeveloperProfile,
                  style: StyleTextManager.appBarTitle,
                ),
              ),
              SizedBox(
                width: 200,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 20),
            child: TabBar(tabs: [
              Text(AppText.overView),
              Text(AppText.skill),
              Text(AppText.experience),
              Text(AppText.productionRelease, textAlign: TextAlign.center,),
              Text(AppText.pubDevRelease,textAlign: TextAlign.center,),
            ]),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 200);
}
