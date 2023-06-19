part of 'main_bloc.dart';

enum MainStatus {
  initial,
  loading,
  failure,
  accountFetched,
  moneyWithdrawn,
}

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default(MainStatus.initial) MainStatus status,
    Account? account,
  }) = _MainState;
}
