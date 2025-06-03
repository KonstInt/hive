import 'package:flutter/material.dart' hide Ink;
import 'package:google_mlkit_digital_ink_recognition/google_mlkit_digital_ink_recognition.dart';
import 'package:hive/src_v2/features/digital_ink_ml_recognizer/domain/models/enums/languages_digital_ink_enum.dart';
import 'package:hive/src_v2/features/digital_ink_ml_recognizer/presentation/recognize_screen.dart';
import 'package:hive/src_v2/features/theme/themes/extensions/build_context_ext.dart';

class InkRecognitionWidget extends StatefulWidget {
  final String languageCode;
  final bool isAnswered;
  final bool isCorrect;
  final String? userAnswer;
  final String rightAnswer;

  final Function({required String recognizedText}) callback;
  final bool isEnabled;

  const InkRecognitionWidget({
    super.key,
    required this.languageCode,
    required this.rightAnswer,
    required this.callback,
    required this.isAnswered,
    required this.isCorrect,
    this.userAnswer,
    this.isEnabled = true,
  });

  @override
  State<InkRecognitionWidget> createState() => InkRecognitionWidgetState();
}

class InkRecognitionWidgetState extends State<InkRecognitionWidget> {
  late DigitalInkRecognizer recognizer;
  Ink ink = Ink();
  List<StrokePoint> points = [];
  String? recognizedText;

  @override
  void initState() {
    super.initState();
    recognizer = DigitalInkRecognizer(languageCode: widget.languageCode);
  }

  void _clearInk() {
    setState(() {
      ink = Ink();
      recognizedText = null;
    });
  }

  Future<void> recognizeInk() async {
    if (!widget.isEnabled || ink.strokes.isEmpty) return;

    final result = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return RecognizeScreen(
          data: ink,
          language: LanguagesDigitalInlEnum.values.firstWhere(
            (e) => e.value == widget.languageCode,
            orElse: () => LanguagesDigitalInlEnum.en,
          ),
        );
      },
    );

    if (result != null) {
      setState(() {
        recognizedText = result;
      });
      widget.callback(recognizedText: result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: context.colors.black20,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: context.colors.secondaryBackground,
                  width: 1,
                ),
              ),
              child: LayoutBuilder(
                builder: (context, constr) {
                  return GestureDetector(
                    onPanStart: (DragStartDetails details) {
                      if (!widget.isEnabled) return;
                      ink.strokes.add(Stroke());
                    },
                    onPanUpdate: (DragUpdateDetails details) {
                      if (!widget.isEnabled) return;
                      setState(() {
                        final localPosition = details.localPosition;
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
            if (widget.isEnabled)
              Positioned(
                top: 8,
                right: 8,
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.clear,
                        color: context.colors.baseText,
                      ),
                      onPressed: _clearInk,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.check_circle_outline,
                        color: context.colors.baseText,
                      ),
                      onPressed: recognizeInk,
                    ),
                  ],
                ),
              ),
            if (widget.isAnswered)
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: widget.isCorrect
                      ? context.colors.hulk.withAlpha(50)
                      : context.colors.mario.withAlpha(50),
                ),
              ),
            if (widget.isAnswered && !widget.isCorrect)
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Text(
                  textAlign: TextAlign.center,
                  "Правильный ответ: ${widget.rightAnswer}",
                  style: context.textStyles.bodyB.copyWith(
                    color: context.colors.mario,
                  ),
                ),
              ),
          ],
        ),
        if (recognizedText != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Распознано: $recognizedText',
              style: context.textStyles.bodyB,
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
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
