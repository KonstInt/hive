// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/course_task/presentation/bloc/progress/progress_saving_bloc.dart'
    as _i16;
import '../../features/course_task/presentation/bloc/task/course_test_task_bloc.dart'
    as _i10;
import '../../features/digital_ink_ml_recognizer/data/mapper/digital_ink_mapper.dart'
    as _i4;
import '../../features/digital_ink_ml_recognizer/data/repository/digital_ink_ml_recognizer_repository.dart'
    as _i20;
import '../../features/digital_ink_ml_recognizer/data/service/digital_ink_ml_recognizer_service.dart'
    as _i5;
import '../../features/digital_ink_ml_recognizer/data/util/digitak_ink_ml_recognizel_util.dart'
    as _i15;
import '../../features/digital_ink_ml_recognizer/domain/bloc/ml_recognizer/bloc_digital_ink_ml_recognizer_bloc.dart'
    as _i21;
import '../../features/user/data/firebase/mappers/firebase_user_mapper.dart'
    as _i6;
import '../../features/user/data/firebase/repository/firebase_user_repository.dart'
    as _i14;
import '../../features/user/data/firebase/service/firebase_user_service.dart'
    as _i7;
import '../../features/user/data/firebase/util/firebase_user_util.dart' as _i12;
import '../../features/user/domain/repository/remote_user_repository.dart'
    as _i13;
import '../../features/user/presentation/pages/login/bloc/login_bloc.dart'
    as _i19;
import '../../features/user/presentation/pages/profile/bloc/profile_bloc.dart'
    as _i11;
import '../../features/user/presentation/pages/signup/bloc/signup_bloc.dart'
    as _i18;
import '../../features/user/presentation/pages/user_enter_controll/bloc/sign_in_control_bloc.dart'
    as _i17;
import '../../use_cases/course_session_use_case/course_session_use_case.dart'
    as _i8;
import '../../use_cases/user_use_case/user_use_case.dart' as _i9;
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
    gh.singleton<_i6.FirebaseUserMapper>(() => _i6.FirebaseUserMapper());
    gh.singleton<_i7.FirebaseUserService>(() => _i7.FirebaseUserService());
    gh.singleton<_i8.CourseSessionUseCase>(() => _i8.CourseSessionUseCase());
    gh.singleton<_i9.UserUseCase>(() => _i9.UserUseCase());
    gh.factory<_i10.CourseTestTaskBloc>(
        () => _i10.CourseTestTaskBloc(gh<_i8.CourseSessionUseCase>()));
    gh.factory<_i11.ProfileBloc>(() => _i11.ProfileBloc(gh<_i9.UserUseCase>()));
    gh.singleton<_i12.FirebaseUserUtil>(() => _i12.FirebaseUserUtil(
          mapper: gh<_i6.FirebaseUserMapper>(),
          service: gh<_i7.FirebaseUserService>(),
        ));
    gh.singleton<_i13.RemoteUserRepository>(() => _i14.FirebaseUserRepository(
          util: gh<_i12.FirebaseUserUtil>(),
          userUseCase: gh<_i9.UserUseCase>(),
        ));
    gh.singleton<_i15.DigitalInkMlRecognizerUtil>(
        () => _i15.DigitalInkMlRecognizerUtil(
              service: gh<_i5.DigitalInkMlRecognizerService>(),
              mapper: gh<_i4.DigitalInkMapper>(),
            ));
    gh.factory<_i16.ProgressSavingBloc>(() => _i16.ProgressSavingBloc(
          gh<_i8.CourseSessionUseCase>(),
          gh<_i9.UserUseCase>(),
        ));
    gh.factory<_i17.SignInControlBloc>(() => _i17.SignInControlBloc(
          gh<_i13.RemoteUserRepository>(),
          gh<_i9.UserUseCase>(),
        ));
    gh.factory<_i18.SignUpBloc>(
        () => _i18.SignUpBloc(gh<_i13.RemoteUserRepository>()));
    gh.factory<_i19.LoginBloc>(
        () => _i19.LoginBloc(gh<_i13.RemoteUserRepository>()));
    gh.singleton<_i20.DigitalInkMlRecognizerRepository>(() =>
        _i20.DigitalInkMlRecognizerRepository(
            util: gh<_i15.DigitalInkMlRecognizerUtil>()));
    gh.factory<_i21.BlocDigitalInkMlRecognizerBloc>(() =>
        _i21.BlocDigitalInkMlRecognizerBloc(
            repository: gh<_i20.DigitalInkMlRecognizerRepository>()));
    return this;
  }
}
