import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/src_v2/features/user/data/user_api.dart';
import 'package:hive/src_v2/features/user/shared/user_model.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserApi _userApi;
  UserBloc({required UserApi userApi})
      : _userApi = userApi,
        super(UserLoadingState()) {
    on<UserEvent>(
      (event, emit) async {
        switch (event) {
          case UserLoadEvent _:
            await _loadUser(event, emit);
            break;
          case UserUpdateEvent():
            await _updateUser(event, emit);
            break;
        }
      },
    );
  }

  Future<void> _loadUser(UserLoadEvent event, Emitter<UserState> emit) async {
    emit(UserLoadingState());
    try {
      final user = await _userApi.getCurrentUser(event.uuid);
      emit(
        UserLoadedState(userDataModel: user),
      );
    } catch (e) {
      emit(UserErrorState());
    }
  }

  Future<void> _updateUser(
      UserUpdateEvent event, Emitter<UserState> emit) async {
    emit(UserLoadingState());
    try {
      final user = await _userApi.updateUser(event.userModel, event.uuid);
      emit(
        UserLoadedState(userDataModel: user),
      );
    } catch (e) {
      emit(UserErrorState());
    }
  }
}
