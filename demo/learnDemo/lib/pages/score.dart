import 'package:flutter/material.dart';

class ScoreBg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
        size:  Size(300, 300),
        painter: ScorePainter(),
      ),
    );
  }
}

class ScorePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();


    paint
      ..isAntiAlias = true
      ..style = PaintingStyle.stroke
      ..color = Colors.red;

    // canvas.drawPath(Path.from(), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
  
}