import 'package:flutter/material.dart' hide Ink;
import 'package:google_mlkit_digital_ink_recognition/google_mlkit_digital_ink_recognition.dart';
import 'package:hive/src/features/digital_ink_ml_recognizer/domain/models/enums/languages_digital_ink_enum.dart';
import 'package:hive/src/features/digital_ink_ml_recognizer/presentation/recognize_screen.dart';

class InkRecognitionWidget extends StatefulWidget {
  final String languageCode;
  final String correctAnswer;

  const InkRecognitionWidget({
    super.key,
    required this.languageCode,
    required this.correctAnswer,
  });

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
        return RecognizeScreen(
            data: ink, language: LanguagesDigitalInlEnum.zhHani);
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
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                showResult
                    ? isCorrect
                        ? Colors.green.withOpacity(0.3)
                        : Colors.red.withOpacity(0.3)
                    : Colors.transparent,
                BlendMode.srcATop,
              ),
              child: Container(
                width: double.infinity,
                height: 200,
                color: Colors.white,
                child: LayoutBuilder(
                  builder: (context, constr) {
                    return GestureDetector(
                      onPanStart: (DragStartDetails details) {
                        ink.strokes.add(Stroke());
                      },
                      onPanUpdate: (DragUpdateDetails details) {
                        setState(() {
                          final localPosition = details.localPosition;

                          // Проверка на границы контейнера
                          if (localPosition.dx >= 0 &&
                              localPosition.dx <= constr.maxWidth &&
                              localPosition.dy >= 0 &&
                              localPosition.dy <= constr.maxHeight) {
                            points = List.from(points)
                              ..add(StrokePoint(
                                x: localPosition.dx,
                                y: localPosition.dy,
                                t: DateTime.now().millisecondsSinceEpoch,
                              ));
                            if (ink.strokes.isNotEmpty) {
                              ink.strokes.last.points = points.toList();
                            }
                          }
                        });
                      },
                      onPanEnd: (DragEndDetails details) {
                        points.clear();
                        setState(() {});
                      },
                      child: CustomPaint(
                        painter: InkPainter(ink: ink),
                        child: Container(),
                      ),
                    );
                  },
                ),
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
          ],
        ),
        if (showResult && !isCorrect)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Correct Answer: ${widget.correctAnswer}',
              style: const TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold),
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
