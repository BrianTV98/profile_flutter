import 'package:flutter/material.dart';
import 'package:profile_2/presentation/pages/experience_page.dart';
import 'package:profile_2/presentation/pages/over_view.dart';
import 'package:profile_2/presentation/pages/production_release_page.dart';
import 'package:profile_2/presentation/pages/pubdev_release_page.dart';
import 'package:profile_2/presentation/pages/skill_page.dart';
import 'package:profile_2/presentation/widgets/appBar.dart';
import 'package:profile_2/presentation/widgets/bottom_sheet.dart';

class HomScreen extends StatelessWidget {
  const HomScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBarApplication(),
        bottomSheet: BottomSheetApplication(),
        body: TabBarView(children: [
          OverViewPage(),
          SkillPage(),
          ExperiencePage(),
          ProductionReleasePage(),
          PubDevReleasePage(),
        ]),
      ),
    );
  }
}

class Test extends StatelessWidget {
  const Test({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
