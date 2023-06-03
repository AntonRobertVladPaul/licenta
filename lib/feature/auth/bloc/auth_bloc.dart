import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:licenta/core/core.dart';
import 'package:licenta/feature/auth/auth.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required AuthRepository repository,
    required AccountType type,
  })  : _repository = repository,
        super(AuthState(type: type)) {
    on<_CheckUserExists>(_onCheckUserExists);
    on<_AccountSignedUp>(_onAccountSignedUp);
    on<_AccountLoggedIn>(_onAccountLoggedIn);
  }

  final AuthRepository _repository;

  Future<void> _onCheckUserExists(
    _CheckUserExists event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: AuthStatus.loading));

    final result = await _repository.checkUserExists(event.email);

    result.fold(
      (_) => emit(state.copyWith(status: AuthStatus.failure)),
      (identity) => identity
          ? emit(
              state.copyWith(
                status: AuthStatus.accountExists,
                email: event.email,
              ),
            )
          : emit(
              state.copyWith(
                status: AuthStatus.accountMissing,
                email: event.email,
              ),
            ),
    );
  }

  Future<void> _onAccountSignedUp(
    _AccountSignedUp event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: AuthStatus.loading));

    final result = await _repository.signUp(
      Account(
        firstName: event.firstName,
        lastName: event.lastName,
        email: state.email ?? '',
        password: event.password,
        accountType: state.type,
      ),
    );

    result.fold(
      (_) => emit(state.copyWith(status: AuthStatus.failure)),
      (_) => emit(state.copyWith(status: AuthStatus.accountSignedUp)),
    );
  }

  Future<void> _onAccountLoggedIn(
    _AccountLoggedIn event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: AuthStatus.loading));

    final result = await _repository.login(
      LoginParams(
        email: state.email ?? '',
        password: event.password,
      ),
    );

    result.fold(
      (_) => emit(state.copyWith(status: AuthStatus.failure)),
      (success) => success
          ? emit(state.copyWith(status: AuthStatus.accountLoggedIn))
          : emit(state.copyWith(status: AuthStatus.failure)),
    );
  }
}
