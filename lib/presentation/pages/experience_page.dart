import 'package:flutter/material.dart';
import 'package:profile_2/presentation/widgets/background_gradient.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackGroundGradient(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }
}
