import 'package:flutter/material.dart';
import 'package:profile_2/untils/gradient_paint.dart';

class OutlineContainer extends StatelessWidget {
  final GradientPainter _painter;
  final Widget _child;
  final double _radius;

  OutlineContainer({
    @required double strokeWidth,
    @required double radius,
    @required Gradient gradient,
    @required Widget child,
  })  : this._painter = GradientPainter(strokeWidth: strokeWidth, radius: radius, gradient: gradient),
        this._child = child,
        this._radius = radius;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _painter,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(_radius)
        ),
        constraints: BoxConstraints(minWidth: 88, minHeight: 48),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _child,
          ],
        ),
      ),
    );
  }
}
