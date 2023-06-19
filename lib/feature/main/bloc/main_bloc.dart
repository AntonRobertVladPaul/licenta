import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/main/main.dart';
import 'package:licenta/resource/constants/constants.dart';

part 'main_bloc.freezed.dart';

part 'main_event.dart';

part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc(MainRepository repository)
      : _repository = repository,
        super(
          const MainState(),
        ) {
    on<_AccountFetched>(_onAccountFetched);
    on<_MoneyWithdrawn>(_onMoneyWithdrawn);
  }

  final MainRepository _repository;

  Future<void> _onAccountFetched(
    _AccountFetched event,
    Emitter<MainState> emit,
  ) async {
    emit(
      state.copyWith(status: MainStatus.loading),
    );

    final email = await const FlutterSecureStorage().read(
      key: StorageConstants.authKey,
    );
    final result = await _repository.getAccount(email ?? '');

    result.fold(
      (_) => emit(state.copyWith(status: MainStatus.failure)),
      (account) => emit(
        state.copyWith(status: MainStatus.accountFetched, account: account),
      ),
    );
  }

  Future<void> _onMoneyWithdrawn(
    _MoneyWithdrawn event,
    Emitter<MainState> emit,
  ) async {
    emit(
      state.copyWith(status: MainStatus.loading),
    );

    final result = await _repository.withdrawMoney(
      iban: event.iban,
      email: state.account?.email ?? '',
    );

    result.fold(
      (_) => emit(state.copyWith(status: MainStatus.failure)),
      (_) => emit(
        state.copyWith(status: MainStatus.moneyWithdrawn),
      ),
    );
  }
}
