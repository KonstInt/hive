import 'package:hive/src_v2/features/digital_ink_ml_recognizer/data/util/digitak_ink_ml_recognizel_util.dart';
import 'package:hive/src_v2/features/digital_ink_ml_recognizer/domain/models/get/get_digital_ink_model.dart';
import 'package:hive/src_v2/features/digital_ink_ml_recognizer/domain/models/send/send_digital_ink_model.dart';


import '../../domain/repository/digital_ink_recognizer_repository.dart';

class DigitalInkMlRecognizerRepository extends DigitalInkRecognizeRepository {
  DigitalInkMlRecognizerUtil util;
  DigitalInkMlRecognizerRepository({required this.util});

  @override
  Future<List<GetDigitalInkModel>> recognizeText(
      SendDigitalInkModel requestData) {
    return util.recognizeDigitalInk(requestData);
  }
}
