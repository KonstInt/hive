import 'package:flutter/material.dart' hide Ink;
import 'package:google_mlkit_digital_ink_recognition/google_mlkit_digital_ink_recognition.dart';

class InkRecognitionWidget extends StatefulWidget {
  final String languageCode;
  final String correctAnswer;

  const InkRecognitionWidget({
    Key? key,
    required this.languageCode,
    required this.correctAnswer,
  }) : super(key: key);

  @override
  State<InkRecognitionWidget> createState() => _InkRecognitionWidgetState();
}

class _InkRecognitionWidgetState extends State<InkRecognitionWidget> {
  late DigitalInkRecognizer recognizer;
  Ink ink = Ink();
  List<StrokePoint> points = [];
  bool showResult = false;
  bool isCorrect = false;
  String? recognizedText;

  @override
  void initState() {
    super.initState();
    recognizer = DigitalInkRecognizer(languageCode: widget.languageCode);
  }

  void _clearInk() {
    setState(() {
      ink = Ink();
      showResult = false;
      recognizedText = null;
    });
  }

  Future<void> _confirmInk() async {
    // Заглушка для вызова модального окна
    recognizedText = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Recognize Ink'),
          content: const Text('This is a stub for ink recognition.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'a'),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );

    setState(() {
      showResult = true;
      isCorrect = recognizedText == widget.correctAnswer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.white,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return GestureDetector(
                    onPanStart: (DragStartDetails details) {
                      ink.strokes.add(Stroke());
                    },
                    onPanUpdate: (DragUpdateDetails details) {
                      setState(() {
                        final RenderObject? object = context.findRenderObject();
                        final localPosition = (object as RenderBox?)
                            ?.globalToLocal(details.localPosition);
                        if (localPosition != null) {
                          points = List.from(points)
                            ..add(StrokePoint(
                              x: localPosition.dx,
                              y: localPosition.dy,
                              t: DateTime.now().millisecondsSinceEpoch,
                            ));
                        }
                        if (ink.strokes.isNotEmpty) {
                          ink.strokes.last.points = points.toList();
                        }
                      });
                    },
                    onPanEnd: (DragEndDetails details) {
                      points.clear();
                      setState(() {});
                    },
                    child: CustomPaint(
                      size: Size(constraints.maxWidth, constraints.maxHeight),
                      painter: InkPainter(ink: ink),
                     
                    ),
                  );
                }
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: showResult ? null : _clearInk,
              ),
            ),
            if (showResult)
              Positioned.fill(
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    isCorrect ? Colors.green.withOpacity(0.3) : Colors.red.withOpacity(0.3),
                    BlendMode.srcATop,
                  ),
                  child: Container(color: Colors.transparent),
                ),
              ),
          ],
        ),
        if (showResult && !isCorrect)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Correct Answer: ${widget.correctAnswer}',
              style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ElevatedButton(
            onPressed: showResult ? null : _confirmInk,
            child: const Text('Confirm'),
          ),
        ),
      ],
    );
  }
}

class InkPainter extends CustomPainter {
  final Ink ink;

  InkPainter({required this.ink});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round;

    for (var stroke in ink.strokes) {
      for (int i = 1; i < stroke.points.length; i++) {
        final p1 = Offset(stroke.points[i - 1].x, stroke.points[i - 1].y);
        final p2 = Offset(stroke.points[i].x, stroke.points[i].y);
        canvas.drawLine(p1, p2, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}