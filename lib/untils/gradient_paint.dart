import 'package:flutter/material.dart';
import 'dart:math' as math;
class GradientPainter extends CustomPainter {
  final Paint _paint = Paint();
  final Color backGroundColor;
  final double radius;
  final double strokeWidth;
  final Gradient gradient;

  GradientPainter({@required this.strokeWidth, @required this.radius, @required this.gradient, this.backGroundColor = Colors.white,});

  @override
  void paint(Canvas canvas, Size size) {
    // create outer rectangle equals size
    Rect outerRect = Offset.zero & size;
    var outerRRect = RRect.fromRectAndRadius(outerRect, Radius.circular(radius));

    // create inner rectangle smaller by strokeWidth
    Rect innerRect = Rect.fromLTWH(strokeWidth,
        strokeWidth,
        size.width - strokeWidth * 2,
        size.height - strokeWidth * 2);

    var innerRRect = RRect.fromRectAndRadius(innerRect, Radius.circular(radius - strokeWidth));

    // apply gradient shader
    _paint.shader = gradient.createShader(outerRect);

    // create difference between outer and inner paths and draw it
    Path path1 = Path()..addRRect(outerRRect);

    Path path2 = Path()..addRRect(innerRRect);
    var path = Path.combine(PathOperation.difference, path1, path2);

    // canvas.drawPath(Path.from(path1), _paint);
    // _paint.shader = LinearGradient(colors: [backGroundColor, backGroundColor]).createShader(innerRect);
    // canvas.drawPath(Path.from(path2), _paint);



    /// test
    final RRect outer =  BorderRadius.all(Radius.circular(20.0)).toRRect(Rect.fromLTRB(0, 100, 100, 0));



    // final bool isFocused = borderSide.width == 2.0;
    //
    // paint.shader =
    // isFocused ? focusedGradient.createShader(outer.outerRect) : unfocusedGradient.createShader(outer.outerRect);
    final RRect center = outer.deflate(BorderSide(color: Colors.red, width: 2).width / 2.0);
    // if (gapStart == null || gapExtent <= 0.0 || gapPercentage == 0.0) {
    var  a = Border.merge(Border.all(color: Colors.red), Border.all(color: Colors.brown)).paint(canvas,  Offset.zero & size);
    final Paint paint = BorderSide(color: Colors.red, width: 2).toPaint();

  }

  Path _gapBorderPath(Canvas canvas, RRect center, double start, double extent) {
    final Rect tlCorner = Rect.fromLTWH(
      center.left,
      center.top,
      center.tlRadiusX * 2.0,
      center.tlRadiusY * 2.0,
    );
    final Rect trCorner = Rect.fromLTWH(
      center.right - center.trRadiusX * 2.0,
      center.top,
      center.trRadiusX * 2.0,
      center.trRadiusY * 2.0,
    );
    final Rect brCorner = Rect.fromLTWH(
      center.right - center.brRadiusX * 2.0,
      center.bottom - center.brRadiusY * 2.0,
      center.brRadiusX * 2.0,
      center.brRadiusY * 2.0,
    );
    final Rect blCorner = Rect.fromLTWH(
      center.left,
      center.bottom - center.brRadiusY * 2.0,
      center.blRadiusX * 2.0,
      center.blRadiusY * 2.0,
    );

    const double cornerArcSweep = math.pi / 2.0;
    final double tlCornerArcSweep = start < center.tlRadiusX ? math.asin(start / center.tlRadiusX) : math.pi / 2.0;

    final Path path = Path()
      ..addArc(tlCorner, math.pi, tlCornerArcSweep)
      ..moveTo(center.left + center.tlRadiusX, center.top);

    if (start > center.tlRadiusX) path.lineTo(center.left + start, center.top);

    const double trCornerArcStart = (3 * math.pi) / 2.0;
    const double trCornerArcSweep = cornerArcSweep;
    if (start + extent < center.width - center.trRadiusX) {
      path
        ..relativeMoveTo(extent, 0.0)
        ..lineTo(center.right - center.trRadiusX, center.top)
        ..addArc(trCorner, trCornerArcStart, trCornerArcSweep);
    } else if (start + extent < center.width) {
      final double dx = center.width - (start + extent);
      final double sweep = math.acos(dx / center.trRadiusX);
      path.addArc(trCorner, trCornerArcStart + sweep, trCornerArcSweep - sweep);
    }

    return path
      ..moveTo(center.right, center.top + center.trRadiusY)
      ..lineTo(center.right, center.bottom - center.brRadiusY)
      ..addArc(brCorner, 0.0, cornerArcSweep)
      ..lineTo(center.left + center.blRadiusX, center.bottom)
      ..addArc(blCorner, math.pi / 2.0, cornerArcSweep)
      ..lineTo(center.left, center.top + center.trRadiusY);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}