import 'package:flutter/material.dart';
import 'package:profile_2/data/experience.dart';
import 'package:profile_2/data/technical.dart';
import 'package:profile_2/data/position_job.dart';

class ExperienceItem extends StatelessWidget {
  final Experience experience;

  const ExperienceItem({this.experience, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "CompanyName:" + experience.companyName,
            style: TextStyle(color: Colors.white),
          ),
          Text("Time: ${experience.from}  - ${experience.to}",
              style: TextStyle(color: Colors.white)),
          Text("Position: ${experience.position.text}",
              style: TextStyle(color: Colors.white)),
          Text("Field:  ${experience.field}",
              style: TextStyle(color: Colors.white)),
          Row(
            children: [
              Text("Technical: ", style: TextStyle(color: Colors.white)),
              Wrap(
                children: [
                  ...List.generate(
                    experience.technical.length,
                    (index) => Text(experience.technical[index].text + ", ",
                        style: TextStyle(color: Colors.white)),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
