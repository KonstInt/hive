import 'package:google_mlkit_digital_ink_recognition/google_mlkit_digital_ink_recognition.dart';

import '../models/get/api_get_digital_ink_model.dart';
import '../models/send/api_send_digital_ink_model.dart';

class DigitalInkRecognitionException implements Exception {
  final String message;
  DigitalInkRecognitionException(this.message);

  @override
  String toString() => 'DigitalInkRecognitionException: $message';
}

class ModelDownloadException extends DigitalInkRecognitionException {
  ModelDownloadException(super.message);
}

class DigitalInkMlRecognizerService {
  final DigitalInkRecognizerModelManager modelManager;
  DigitalInkRecognizer? _recognizer;

  DigitalInkMlRecognizerService()
      : modelManager = DigitalInkRecognizerModelManager();

  Future<List<ApiGetDigitalInkModel>> recognizeDigitalInk(
    ApiSendDigitalInkModel model,
  ) async {
    try {
      _validateInput(model);

      final languageCode = model.language.value;

      await _ensureModelDownloaded(languageCode);

      if (_recognizer?.languageCode != languageCode) {
        await _initializeRecognizer(languageCode);
      }

      final candidates = await _recognizer!.recognize(model.data);

      if (candidates.isEmpty) {
        return [];
      }

      return candidates
          .map((e) => ApiGetDigitalInkModel(word: e.text, score: e.score))
          .toList()
        ..sort((a, b) => b.score.compareTo(a.score));
    } on DigitalInkRecognitionException {
      rethrow;
    } catch (e) {
      throw DigitalInkRecognitionException(
          'Recognition failed: ${e.toString()}');
    }
  }

  Future<void> _initializeRecognizer(String languageCode) async {
    _recognizer?.close();
    _recognizer = DigitalInkRecognizer(languageCode: languageCode);
  }

  void _validateInput(ApiSendDigitalInkModel model) {
    for (final stroke in model.data.strokes) {
      if (stroke.points.isEmpty) {
        throw DigitalInkRecognitionException('Stroke points cannot be empty');
      }
    }
  }

  Future<void> _ensureModelDownloaded(String languageCode) async {
    try {
      final isDownloaded = await modelManager.isModelDownloaded(languageCode);
      if (!isDownloaded) {
        final success = await modelManager.downloadModel(
          languageCode,
          isWifiRequired: false,
        );
        if (!success) {
          throw ModelDownloadException(
              'Failed to download model for language $languageCode');
        }
      }
    } catch (e) {
      throw ModelDownloadException(
          'Error handling model for language $languageCode: ${e.toString()}');
    }
  }
  
  Future<void> dispose() async {
    await _recognizer?.close();
    _recognizer = null;
  }
}
