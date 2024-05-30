import 'package:hive/src/features/digital_ink_ml_recognizer/data/models/enums/api_languages_digital_ink_enum.dart';
import 'package:hive/src/features/digital_ink_ml_recognizer/data/models/get/api_get_digital_ink_model.dart';
import 'package:hive/src/features/digital_ink_ml_recognizer/data/models/send/api_send_digital_ink_model.dart';
import 'package:hive/src/features/digital_ink_ml_recognizer/domain/models/get/get_digital_ink_model.dart';
import 'package:hive/src/features/digital_ink_ml_recognizer/domain/models/send/send_digital_ink_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class DigitalInkMapper {
  GetDigitalInkModel getInkModelFromApi(ApiGetDigitalInkModel model) {
    return GetDigitalInkModel(word: model.word, score: model.score);
  }

  ApiSendDigitalInkModel sendInkModelToApi(SendDigitalInkModel model) {
    return ApiSendDigitalInkModel(
      data: model.data,
      language: ApiLanguagesDigitalInlEnum.values.firstWhere(
        (element) => element.name == model.language.name,
        orElse: () {
          throw Exception(
              "no match with enums between ApiLanguagesDigitalInlEnum and LanguagesDigitalInlEnum");
        },
      ),
    );
  }
}
