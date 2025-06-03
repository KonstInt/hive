import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_tts/flutter_tts.dart';
import '../models/task_model.dart';

class QuestionWidget extends StatelessWidget {
  final TaskModel task;

  const QuestionWidget({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    switch (task.questionType) {
      case QuestionType.text:
        return TextQuestionWidget(content: task.questionContent);
      case QuestionType.html:
        return HtmlQuestionWidget(content: task.questionContent);
      case QuestionType.image:
        return ImageQuestionWidget(content: task.questionContent);
      case QuestionType.tts:
        return TtsQuestionWidget(content: task.questionContent);
    }
  }
}

class TextQuestionWidget extends StatelessWidget {
  final String content;

  const TextQuestionWidget({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        content,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}

class HtmlQuestionWidget extends StatelessWidget {
  final String content;

  const HtmlQuestionWidget({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Html(
        data: content,
        style: {
          'body': Style(
            fontSize: FontSize(18),
            color: Theme.of(context).textTheme.bodyLarge?.color,
            fontFamily: Theme.of(context).textTheme.bodyLarge?.fontFamily,
          ),
        },
      ),
    );
  }
}

class ImageQuestionWidget extends StatelessWidget {
  final String content;

  const ImageQuestionWidget({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.network(
        content,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, progress) {
          if (progress == null) return child;
          return Container(
            height: 200,
            alignment: Alignment.center,
            child: CircularProgressIndicator(
                value: progress.expectedTotalBytes != null
                    ? progress.cumulativeBytesLoaded /
                        progress.expectedTotalBytes!
                    : null),
          );
        },
        errorBuilder: (context, error, stackTrace) {
          return Container(
            height: 200,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.error.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              'Ошибка загрузки изображения',
              style: TextStyle(color: Colors.red),
            ),
          );
        },
      ),
    );
  }
}

class TtsQuestionWidget extends StatefulWidget {
  final String content;

  const TtsQuestionWidget({
    super.key,
    required this.content,
  });

  @override
  State<TtsQuestionWidget> createState() => _TtsQuestionWidgetState();
}

class _TtsQuestionWidgetState extends State<TtsQuestionWidget> {
  final FlutterTts _tts = FlutterTts();
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _tts.setCompletionHandler(() => setState(() => _isPlaying = false));
    _tts.setCancelHandler(() => setState(() => _isPlaying = false));
  }

  @override
  void dispose() {
    _tts.stop();
    super.dispose();
  }

  Future<void> _toggleTts() async {
    if (_isPlaying) {
      await _tts.stop();
    } else {
      setState(() => _isPlaying = true);
      await _tts.setLanguage("ru-RU");
      await _tts.setSpeechRate(0.5);
      await _tts.speak(widget.content);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Text(
            'Выберите то что услышали',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16),
          IconButton.filled(
            tooltip: _isPlaying ? 'Остановить' : 'Прослушать',
            icon: Icon(_isPlaying ? Icons.stop : Icons.volume_up),
            onPressed: _toggleTts,
            iconSize: 32,
          ),
        ],
      ),
    );
  }
}
