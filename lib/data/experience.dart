import 'package:flutter/cupertino.dart';
import 'package:profile_2/data/position_job.dart';
import 'package:profile_2/data/technical.dart';

class Experience {
  final String companyName;
  final String from;
  final String to;
  final String field;
  final PositionJob position;
  final List<Technical> technical;

  Experience(
      {@required this.companyName,
      @required this.from,
      @required this.to,
      @required this.field,
      @required this.position,
      @required this.technical});

  factory Experience.fromJson(Map<String, dynamic> json) {
    return Experience(
        companyName: json["companyName"],
        from: json["from"],
        to: json["to"],
        field: json["field"],
        position: json["position"],
        technical: json["technical"]);
  }

  Map<String, dynamic> toJson() {
    return Map();
  }
}

List<Experience> experience = [
  Experience(
      companyName: "CrossTech",
      from: '6/2019',
      to: "1/2020",
      field: "Learn and take part in Production of Company",
      position: PositionJob.intern,
      technical: [Technical.kotlin]),
  Experience(
      companyName: "Đất Việt",
      from: '4/2020',
      to: "6/20220",
      field: "Outsource",
      position: PositionJob.intern,
      technical: [Technical.flutter]),
  Experience(
      companyName: "VietInfo",
      from: "6/2020",
      to: "10/20201",
      field: "Digital Transformation",
      position: PositionJob.fullStackDeveloper,
      technical: [Technical.SQL, Technical.NetCore, Technical.HiveSQL, Technical.flutter]),
  Experience(
      companyName: "PORO",
      from: "20/2020",
      to: "Now",
      field: "Education",
      position: PositionJob.mobileDeveloper,
      technical: [Technical.SQLite, Technical.flutter])
];
