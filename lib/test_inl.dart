import 'dart:ui';

import 'package:flutter/material.dart';

class DrawingWidget extends StatefulWidget {
  const DrawingWidget({super.key});

  @override
  _DrawingWidgetState createState() => _DrawingWidgetState();
}

class _DrawingWidgetState extends State<DrawingWidget> {
  List<Offset?> points = [];

  void _clearDrawing() {
    setState(() {
      points.clear();
    });
  }

  bool _isWithinBounds(Offset position, Size size) {
    return position.dx >= 0 &&
        position.dx <= size.width &&
        position.dy >= 0 &&
        position.dy <= size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 400,
          color: Colors.white,
          child: GestureDetector(
            onPanStart: (details) {
              final RenderBox renderBox =
                  context.findRenderObject() as RenderBox;
              final localPosition =
                  renderBox.globalToLocal(details.localPosition);
              if (_isWithinBounds(localPosition, renderBox.size)) {
                setState(() {
                  points.add(localPosition);
                });
              }
            },
            onPanUpdate: (details) {
              final RenderBox renderBox =
                  context.findRenderObject() as RenderBox;
              final localPosition =
                  renderBox.globalToLocal(details.localPosition);
              if (_isWithinBounds(localPosition, renderBox.size)) {
                setState(() {
                  points.add(localPosition);
                });
              }
            },
            onPanEnd: (details) {
              setState(() {
                points.add(null); // Add a marker for end of stroke
              });
            },
            child: CustomPaint(
              painter: DrawingPainter(points),
              child: Container(),
            ),
          ),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: _clearDrawing,
          ),
        ),
      ],
    );
  }
}

class DrawingPainter extends CustomPainter {
  final List<Offset?> points;

  DrawingPainter(this.points);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round;

    // Iterate through the points and draw lines between them
    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i]!, points[i + 1]!, paint);
      } else if (points[i] != null && points[i + 1] == null) {
        canvas.drawPoints(PointMode.points, [points[i]!], paint);
      }
    }
  }

  @override
  bool shouldRepaint(DrawingPainter oldDelegate) {
    return oldDelegate.points != points;
  }
}
