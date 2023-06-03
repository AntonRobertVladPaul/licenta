part of 'auth_bloc.dart';

enum AuthStatus {
  initial,
  loading,
  failure,
  accountExists,
  accountMissing,
  accountSignedUp,
  accountLoggedIn,
}

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    @Default(AuthStatus.initial) AuthStatus status,
    required AccountType type,
    String? email,
  }) = _AuthState;
}
