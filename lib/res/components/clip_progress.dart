import 'package:flutter/material.dart';

class CircularProgressBarOne extends StatelessWidget {
  final List<Color> segmentColors;
  final List<double> segmentValues;

  CircularProgressBarOne({
    required this.segmentColors,
    required this.segmentValues,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      child: CustomPaint(
        painter: _CircularProgressPainter(segmentColors, segmentValues),
      ),
    );
  }
}

class _CircularProgressPainter extends CustomPainter {
  final List<Color> segmentColors;
  final List<double> segmentValues;

  _CircularProgressPainter(this.segmentColors, this.segmentValues);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    double startAngle = -90; // Start from the top
    for (int i = 0; i < segmentValues.length; i++) {
      final sweepAngle = 360 * segmentValues[i];
      final paint = Paint()
        ..color = segmentColors[i]
        ..style = PaintingStyle.stroke
        ..strokeWidth = 15;
      
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        _degreesToRadians(startAngle),
        _degreesToRadians(sweepAngle),
        false,
        paint,
      );

      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
  double _degreesToRadians(double degrees) {
    return degrees * (3.141592653589793238 / 180);
  }
}
