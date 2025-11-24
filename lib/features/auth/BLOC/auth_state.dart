part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {
  final LoginResponseModel model;

  AuthSuccess(this.model);
  @override
  List<Object?> get props => [model];
}

final class AuthError extends AuthState {
    final String message;

  AuthError(this.message);
  @override
  List<Object?> get props => [message];

}