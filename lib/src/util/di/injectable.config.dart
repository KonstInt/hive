// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/course_task/data/mappers/course_test_task_mapper.dart'
    as _i4;
import '../../features/course_task/data/repository/api_course_test_task_repository.dart'
    as _i23;
import '../../features/course_task/data/service/api_course_test_task_service.dart'
    as _i5;
import '../../features/course_task/data/util/course_test_task_util.dart'
    as _i15;
import '../../features/course_task/domain/repository/course_test_task_repository.dart'
    as _i22;
import '../../features/course_task/presentation/bloc/progress/progress_saving_bloc.dart'
    as _i30;
import '../../features/course_task/presentation/bloc/task/course_test_task_bloc.dart'
    as _i31;
import '../../features/course_test/data/mappers/course_test_mapper.dart'
    as _i13;
import '../../features/course_test/data/repository/api_course_test_repository.dart'
    as _i28;
import '../../features/course_test/data/service/api_course_test_service.dart'
    as _i14;
import '../../features/course_test/data/util/course_test_util.dart' as _i20;
import '../../features/course_test/domain/repository/course_test_repository.dart'
    as _i27;
import '../../features/digital_ink_ml_recognizer/data/mapper/digital_ink_mapper.dart'
    as _i6;
import '../../features/digital_ink_ml_recognizer/data/repository/digital_ink_ml_recognizer_repository.dart'
    as _i29;
import '../../features/digital_ink_ml_recognizer/data/service/digital_ink_ml_recognizer_service.dart'
    as _i7;
import '../../features/digital_ink_ml_recognizer/data/util/digitak_ink_ml_recognizel_util.dart'
    as _i21;
import '../../features/digital_ink_ml_recognizer/domain/bloc/ml_recognizer/bloc_digital_ink_ml_recognizer_bloc.dart'
    as _i32;
import '../../features/user/data/firebase/mappers/firebase_user_mapper.dart'
    as _i8;
import '../../features/user/data/firebase/repository/firebase_user_repository.dart'
    as _i19;
import '../../features/user/data/firebase/service/firebase_user_service.dart'
    as _i9;
import '../../features/user/data/firebase/util/firebase_user_util.dart' as _i17;
import '../../features/user/domain/repository/remote_user_repository.dart'
    as _i18;
import '../../features/user/presentation/pages/login/bloc/login_bloc.dart'
    as _i26;
import '../../features/user/presentation/pages/profile/bloc/profile_bloc.dart'
    as _i16;
import '../../features/user/presentation/pages/signup/bloc/signup_bloc.dart'
    as _i25;
import '../../features/user/presentation/pages/user_enter_controll/bloc/sign_in_control_bloc.dart'
    as _i24;
import '../../use_cases/course_with_meta_use_case/course_with_meta_use_case.dart'
    as _i11;
import '../../use_cases/updating_data_use_case/updating_data_use_case.dart'
    as _i10;
import '../../use_cases/user_use_case/user_use_case.dart' as _i12;
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
    gh.singleton<_i4.CourseTestTaskMapper>(() => _i4.CourseTestTaskMapper());
    gh.singleton<_i5.ApiCourseTestTaskService>(
        () => _i5.ApiCourseTestTaskService());
    gh.singleton<_i6.DigitalInkMapper>(() => _i6.DigitalInkMapper());
    gh.singleton<_i7.DigitalInkMlRecognizerService>(
        () => _i7.DigitalInkMlRecognizerService());
    gh.singleton<_i8.FirebaseUserMapper>(() => _i8.FirebaseUserMapper());
    gh.singleton<_i9.FirebaseUserService>(() => _i9.FirebaseUserService());
    gh.singleton<_i10.MetaUpdatingDataUseCase>(
        () => _i10.MetaUpdatingDataUseCase());
    gh.singleton<_i11.CourseWithMetaUseCase>(
        () => _i11.CourseWithMetaUseCase());
    gh.singleton<_i12.UserUseCase>(() => _i12.UserUseCase());
    gh.singleton<_i13.CourseTestMapper>(() => _i13.CourseTestMapper());
    gh.singleton<_i14.ApiCourseTestService>(() => _i14.ApiCourseTestService());
    gh.singleton<_i15.CourseTestTaskUtil>(() => _i15.CourseTestTaskUtil(
          mapper: gh<_i4.CourseTestTaskMapper>(),
          service: gh<_i5.ApiCourseTestTaskService>(),
        ));
    gh.factory<_i16.ProfileBloc>(
        () => _i16.ProfileBloc(gh<_i12.UserUseCase>()));
    gh.singleton<_i17.FirebaseUserUtil>(() => _i17.FirebaseUserUtil(
          mapper: gh<_i8.FirebaseUserMapper>(),
          service: gh<_i9.FirebaseUserService>(),
        ));
    gh.singleton<_i18.RemoteUserRepository>(() => _i19.FirebaseUserRepository(
          util: gh<_i17.FirebaseUserUtil>(),
          userUseCase: gh<_i12.UserUseCase>(),
        ));
    gh.singleton<_i20.CourseTestUtil>(() => _i20.CourseTestUtil(
          gh<_i13.CourseTestMapper>(),
          gh<_i14.ApiCourseTestService>(),
        ));
    gh.singleton<_i21.DigitalInkMlRecognizerUtil>(
        () => _i21.DigitalInkMlRecognizerUtil(
              service: gh<_i7.DigitalInkMlRecognizerService>(),
              mapper: gh<_i6.DigitalInkMapper>(),
            ));
    gh.singleton<_i22.CourseTestTaskRepository>(() =>
        _i23.ApiCourseTestTaskRepository(util: gh<_i15.CourseTestTaskUtil>()));
    gh.factory<_i24.SignInControlBloc>(() => _i24.SignInControlBloc(
          gh<_i18.RemoteUserRepository>(),
          gh<_i12.UserUseCase>(),
        ));
    gh.factory<_i25.SignUpBloc>(
        () => _i25.SignUpBloc(gh<_i18.RemoteUserRepository>()));
    gh.factory<_i26.LoginBloc>(
        () => _i26.LoginBloc(gh<_i18.RemoteUserRepository>()));
    gh.singleton<_i27.CourseTestRepository>(
        () => _i28.ApiCourseTestRepository(gh<_i20.CourseTestUtil>()));
    gh.singleton<_i29.DigitalInkMlRecognizerRepository>(() =>
        _i29.DigitalInkMlRecognizerRepository(
            util: gh<_i21.DigitalInkMlRecognizerUtil>()));
    gh.factory<_i30.ProgressSavingBloc>(() => _i30.ProgressSavingBloc(
          gh<_i22.CourseTestTaskRepository>(),
          gh<_i10.MetaUpdatingDataUseCase>(),
        ));
    gh.factory<_i31.CourseTestTaskBloc>(
        () => _i31.CourseTestTaskBloc(gh<_i22.CourseTestTaskRepository>()));
    gh.factory<_i32.BlocDigitalInkMlRecognizerBloc>(() =>
        _i32.BlocDigitalInkMlRecognizerBloc(
            repository: gh<_i29.DigitalInkMlRecognizerRepository>()));
    return this;
  }
}
