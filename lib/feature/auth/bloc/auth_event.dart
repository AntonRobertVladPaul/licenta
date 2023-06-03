part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkUserExists({
    required String email,
  }) = _CheckUserExists;

  const factory AuthEvent.accountSignedUp({
    required String firstName,
    required String lastName,
    required String password,
  }) = _AccountSignedUp;

  const factory AuthEvent.accountLoggedIn({
    required String password,
  }) = _AccountLoggedIn;
}
