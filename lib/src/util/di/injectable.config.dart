// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/digital_ink_ml_recognizer/data/mapper/digital_ink_mapper.dart'
    as _i4;
import '../../features/digital_ink_ml_recognizer/data/repository/digital_ink_ml_recognizer_repository.dart'
    as _i7;
import '../../features/digital_ink_ml_recognizer/data/service/digital_ink_ml_recognizer_service.dart'
    as _i5;
import '../../features/digital_ink_ml_recognizer/data/util/digitak_ink_ml_recognizel_util.dart'
    as _i6;
import '../../features/digital_ink_ml_recognizer/domain/bloc/ml_recognizer/bloc_digital_ink_ml_recognizer_bloc.dart'
    as _i8;
import '../router/router.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.RoutingService>(() => _i3.RoutingService());
    gh.singleton<_i4.DigitalInkMapper>(() => _i4.DigitalInkMapper());
    gh.singleton<_i5.DigitalInkMlRecognizerService>(
        () => _i5.DigitalInkMlRecognizerService());
    gh.singleton<_i6.DigitalInkMlRecognizerUtil>(
        () => _i6.DigitalInkMlRecognizerUtil(
              service: gh<_i5.DigitalInkMlRecognizerService>(),
              mapper: gh<_i4.DigitalInkMapper>(),
            ));
    gh.singleton<_i7.DigitalInkMlRecognizerRepository>(() =>
        _i7.DigitalInkMlRecognizerRepository(
            util: gh<_i6.DigitalInkMlRecognizerUtil>()));
    gh.factory<_i8.BlocDigitalInkMlRecognizerBloc>(() =>
        _i8.BlocDigitalInkMlRecognizerBloc(
            repository: gh<_i7.DigitalInkMlRecognizerRepository>()));
    return this;
  }
}
