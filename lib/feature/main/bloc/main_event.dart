part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.accountFetched() = _AccountFetched;

  const factory MainEvent.moneyWithdrawn({
    required String iban,
  }) = _MoneyWithdrawn;
}
