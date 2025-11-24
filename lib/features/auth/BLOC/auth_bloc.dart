import 'package:bloc/bloc.dart';
import 'package:commerce_app/features/auth/model/login_response_model.dart';
import 'package:meta/meta.dart';

import '../../../core/utils/service_locators.dart';
import '../repo/auth_repo.dart';
import 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required Authrepo Authrepo
  }) : super(AuthInitial()) {
    on<AuthLoginEvent>((event, emit) async {
      emit(AuthLoading());

      final res = await Authrepo.login(
        username: event.username,
        password: event.password,
      );
      res.fold(
        (error) {
          emit(AuthError(error));
          return;
        },
        (model) {
          emit(AuthSuccess(model));
        },
      );
    });
  }
}
