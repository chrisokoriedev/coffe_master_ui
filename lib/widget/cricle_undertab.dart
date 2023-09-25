import 'package:flutter/material.dart';

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({required Color color}) : _painter = CirclePainter(color);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _painter;
  }
}

class CirclePainter extends BoxPainter {
  final Paint _paint;

  CirclePainter(Color color)
      : _paint = Paint()
          ..color = color
          ..style = PaintingStyle.fill;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final circleOffset = offset +
        Offset(configuration.size!.width / 2, configuration.size!.height - 8);
    canvas.drawCircle(
        circleOffset, 4, _paint); // Adjust the circle size as needed
  }
}