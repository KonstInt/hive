import 'package:yx_scope/yx_scope.dart';

import '../data/mapper/digital_ink_mapper.dart';
import '../data/repository/digital_ink_ml_recognizer_repository.dart';
import '../data/service/digital_ink_ml_recognizer_service.dart';
import '../data/util/digitak_ink_ml_recognizel_util.dart';
import '../domain/bloc/ml_recognizer/bloc_digital_ink_ml_recognizer_bloc.dart';

class DigitalInkScopeHolder extends ScopeHolder<DigitalInkContainer> {
  DigitalInkScopeHolder({
    super.scopeListeners,
    super.depListeners,
    super.asyncDepListeners,
  });

  @override
  DigitalInkContainer createContainer() => DigitalInkContainer();
}

class DigitalInkContainer extends ScopeContainer {
  DigitalInkContainer();

  late final digitalInkRecognizerBloc = dep(
    () => BlocDigitalInkMlRecognizerBloc(
      repository: digitalInkRecognizerRepository.get,
    ),
  );
  late final digitalInkRecognizerMapper = dep(
    () => DigitalInkMapper(),
  );
  late final digitalInkRecognizerUtil = dep(
    () => DigitalInkMlRecognizerUtil(
      service: digitalInkRecognizerService.get,
      mapper: digitalInkRecognizerMapper.get,
    ),
  );
  late final digitalInkRecognizerRepository = dep(
    () => DigitalInkMlRecognizerRepository(
      util: digitalInkRecognizerUtil.get,
    ),
  );
  late final digitalInkRecognizerService = dep(
    () => DigitalInkMlRecognizerService(),
  );
}
