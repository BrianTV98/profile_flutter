import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:profile_2/data/experience.dart';
import 'package:profile_2/presentation/widgets/background_gradient.dart';
import 'package:profile_2/presentation/widgets/experience_item.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackGroundGradient(
      child: Container(
        margin: const EdgeInsets.symmetric( vertical: 10),
        padding: const EdgeInsets.symmetric( vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 1
          ),
          borderRadius: BorderRadius.circular(20)
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StaggeredGridView.countBuilder(
                itemCount: experience.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) => ExperienceItem(experience: experience[index],),
                staggeredTileBuilder: (int index)  =>   StaggeredTile.count(2,0.5),
                 crossAxisCount: 4,
                crossAxisSpacing: 8.0,
              ),
              Text("* Freelancer From 2019 year to Now", style: TextStyle(
                color: Colors.white
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
