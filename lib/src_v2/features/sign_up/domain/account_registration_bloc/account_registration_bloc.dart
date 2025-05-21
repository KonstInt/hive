import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/src_v2/features/sign_up/data/sign_up_api.dart';

part 'account_registration_event.dart';
part 'account_registration_state.dart';

class AccountRegistrationBloc
    extends Bloc<AccountRegistrationEvent, AccountRegistrationState> {
  final SignUpApi _signUpApi;

  AccountRegistrationBloc({
    required SignUpApi api,
  })  : _signUpApi = api,
        super(AccountRegistrationInitial()) {
    on<AccountRegistrationEvent>(
      (event, emit) async {
        switch (event) {
          case AccountRegistrationEmailEvent event:
            await _registration(event, emit);
            break;
        }
      },
    );
  }

  Future<void> _registration(AccountRegistrationEmailEvent event,
      Emitter<AccountRegistrationState> emit) async {
    emit(AccountRegistrationLoading());
    try {
      final token = await _signUpApi.signUp(event.email, event.password);
      emit(AccountRegistrationSuccess(token: token));
    } catch (e) {
      emit(AccountRegistrationError(error: e.toString()));
    }
  }
}
