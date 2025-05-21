import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../data/theme_repository.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final ThemeRepository _repository;

  ThemeBloc({
    required ThemeRepository repository,
  })  : _repository = repository,
        super(const ThemeState(isDarkMode: false)) {
    on<ToggleThemeEvent>(_onToggleTheme);
    on<SetThemeEvent>(_onSetTheme);
    on<LoadThemeEvent>(_onLoadTheme);

    add(LoadThemeEvent());
  }

  Future<void> _onToggleTheme(
    ToggleThemeEvent event,
    Emitter<ThemeState> emit,
  ) async {
    final newIsDarkMode = !state.isDarkMode;
    await _repository.saveTheme(newIsDarkMode);
    emit(ThemeState(isDarkMode: newIsDarkMode));
  }

  Future<void> _onSetTheme(
    SetThemeEvent event,
    Emitter<ThemeState> emit,
  ) async {
    if (event.isDarkMode != state.isDarkMode) {
      await _repository.saveTheme(event.isDarkMode);
      emit(ThemeState(isDarkMode: event.isDarkMode));
    }
  }

  void _onLoadTheme(
    LoadThemeEvent event,
    Emitter<ThemeState> emit,
  ) {
    final isDarkMode = _repository.getSavedTheme() ?? false;
    emit(ThemeState(isDarkMode: isDarkMode));
  }
}
