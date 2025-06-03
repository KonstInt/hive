import '../../domain/models/get/get_digital_ink_model.dart';
import '../../domain/models/send/send_digital_ink_model.dart';
import '../models/enums/api_languages_digital_ink_enum.dart';
import '../models/get/api_get_digital_ink_model.dart';
import '../models/send/api_send_digital_ink_model.dart';

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
