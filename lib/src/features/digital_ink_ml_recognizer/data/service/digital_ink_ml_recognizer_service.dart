// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:google_mlkit_digital_ink_recognition/google_mlkit_digital_ink_recognition.dart';

import 'package:hive/src/features/digital_ink_ml_recognizer/data/models/get/api_get_digital_ink_model.dart';
import 'package:hive/src/features/digital_ink_ml_recognizer/data/models/send/api_send_digital_ink_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class DigitalInkMlRecognizerService {
  late final DigitalInkRecognizerModelManager modelManager;
  late DigitalInkRecognizer recognizer;
  DigitalInkMlRecognizerService() {
    modelManager = DigitalInkRecognizerModelManager();
    recognizer = DigitalInkRecognizer(languageCode: 'en');
  }

  Future<List<ApiGetDigitalInkModel>> recognizeDigitalInk(
      ApiSendDigitalInkModel model) async {
    if (!await modelManager.isModelDownloaded(model.language.value)) {
      if (!await modelManager.downloadModel(model.language.value)) {
        throw Exception('DigitalInkMlRecognizer error downloading language');
      }
    }

    if (recognizer.languageCode != model.language.value) {
      recognizer.close();
      recognizer = DigitalInkRecognizer(languageCode: model.language.value);
    }
    return (await recognizer.recognize(model.data))
        .map((e) => ApiGetDigitalInkModel(word: e.text, score: e.score))
        .toList();
  }
}
