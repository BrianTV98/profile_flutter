import 'package:flutter/material.dart';
class AvatarImage extends StatelessWidget {
  final double size;

  const AvatarImage({this.size = 50, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1000),
          border: Border.all(color: Colors.white, width: 2)),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(size),
          child: Image.asset(
            "assets/images/" "ic_avatar.JPG",
            fit: BoxFit.cover,
            height: size,
            width: size,
          )),
    );
  }
}