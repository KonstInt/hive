import 'package:yx_scope/yx_scope.dart';
import '../theme_bloc/theme_bloc.dart';
import '../data/theme_repository.dart';

class ThemeScopeHolder extends ScopeHolder<ThemeContainer> {
  ThemeScopeHolder({
    super.scopeListeners,
    super.depListeners,
    super.asyncDepListeners,
  });

  @override
  ThemeContainer createContainer() => ThemeContainer();
}

class ThemeContainer extends ScopeContainer {
  @override
  List<Set<AsyncDep>> get initializeQueue => [
        {
          _repository,
        }
      ];

  late final _repository = rawAsyncDep(
    () => ThemeRepository(),
    init: (dep) async => dep.init(),
    dispose: (dep) async => dep.dispose(),
  );

  late final themeBloc = dep(
    () => ThemeBloc(repository: _repository.get),
  );
}
