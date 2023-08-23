import 'package:flutter/material.dart';

class ConnectorLine extends CustomPainter {
  final double startX;
  final double startY;
  final double endY;

  ConnectorLine({
    required this.startX,
    required this.startY,
    required this.endY,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    final startPoint = Offset(startX, startY);
    final endPoint = Offset(startX, endY);

    canvas.drawLine(startPoint, endPoint, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}


