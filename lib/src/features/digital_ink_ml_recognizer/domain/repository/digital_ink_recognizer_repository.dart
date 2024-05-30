import 'package:hive/src/features/digital_ink_ml_recognizer/domain/models/get/get_digital_ink_model.dart';
import 'package:hive/src/features/digital_ink_ml_recognizer/domain/models/send/send_digital_ink_model.dart';

abstract class DigitalInkRecognizeRepository {
  Future<List<GetDigitalInkModel>> recognizeText(
      SendDigitalInkModel requestData);
}
