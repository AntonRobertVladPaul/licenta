import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta/core/core.dart';

part 'account.freezed.dart';

part 'account.g.dart';

@freezed
class Account with _$Account {
  factory Account({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    @Default(0) int amount,
    required AccountType accountType,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
