import 'package:hive/src_v2/features/digital_ink_ml_recognizer/data/mapper/digital_ink_mapper.dart';
import 'package:hive/src_v2/features/digital_ink_ml_recognizer/domain/models/get/get_digital_ink_model.dart';
import 'package:hive/src_v2/features/digital_ink_ml_recognizer/domain/models/send/send_digital_ink_model.dart';

import '../service/digital_ink_ml_recognizer_service.dart';


class DigitalInkMlRecognizerUtil {
  final DigitalInkMlRecognizerService service;
  final DigitalInkMapper mapper;

  DigitalInkMlRecognizerUtil({required this.service, required this.mapper});

  Future<List<GetDigitalInkModel>> recognizeDigitalInk(
      SendDigitalInkModel model) async {
    final apiModel = mapper.sendInkModelToApi(model);
    return (await service.recognizeDigitalInk(apiModel))
        .map((e) => mapper.getInkModelFromApi(e))
        .toList();
  }
}
