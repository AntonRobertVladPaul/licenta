// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() accountFetched,
    required TResult Function(String iban) moneyWithdrawn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? accountFetched,
    TResult? Function(String iban)? moneyWithdrawn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? accountFetched,
    TResult Function(String iban)? moneyWithdrawn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountFetched value) accountFetched,
    required TResult Function(_MoneyWithdrawn value) moneyWithdrawn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountFetched value)? accountFetched,
    TResult? Function(_MoneyWithdrawn value)? moneyWithdrawn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountFetched value)? accountFetched,
    TResult Function(_MoneyWithdrawn value)? moneyWithdrawn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AccountFetchedCopyWith<$Res> {
  factory _$$_AccountFetchedCopyWith(
          _$_AccountFetched value, $Res Function(_$_AccountFetched) then) =
      __$$_AccountFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccountFetchedCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$_AccountFetched>
    implements _$$_AccountFetchedCopyWith<$Res> {
  __$$_AccountFetchedCopyWithImpl(
      _$_AccountFetched _value, $Res Function(_$_AccountFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccountFetched implements _AccountFetched {
  const _$_AccountFetched();

  @override
  String toString() {
    return 'MainEvent.accountFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AccountFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() accountFetched,
    required TResult Function(String iban) moneyWithdrawn,
  }) {
    return accountFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? accountFetched,
    TResult? Function(String iban)? moneyWithdrawn,
  }) {
    return accountFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? accountFetched,
    TResult Function(String iban)? moneyWithdrawn,
    required TResult orElse(),
  }) {
    if (accountFetched != null) {
      return accountFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountFetched value) accountFetched,
    required TResult Function(_MoneyWithdrawn value) moneyWithdrawn,
  }) {
    return accountFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountFetched value)? accountFetched,
    TResult? Function(_MoneyWithdrawn value)? moneyWithdrawn,
  }) {
    return accountFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountFetched value)? accountFetched,
    TResult Function(_MoneyWithdrawn value)? moneyWithdrawn,
    required TResult orElse(),
  }) {
    if (accountFetched != null) {
      return accountFetched(this);
    }
    return orElse();
  }
}

abstract class _AccountFetched implements MainEvent {
  const factory _AccountFetched() = _$_AccountFetched;
}

/// @nodoc
abstract class _$$_MoneyWithdrawnCopyWith<$Res> {
  factory _$$_MoneyWithdrawnCopyWith(
          _$_MoneyWithdrawn value, $Res Function(_$_MoneyWithdrawn) then) =
      __$$_MoneyWithdrawnCopyWithImpl<$Res>;
  @useResult
  $Res call({String iban});
}

/// @nodoc
class __$$_MoneyWithdrawnCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$_MoneyWithdrawn>
    implements _$$_MoneyWithdrawnCopyWith<$Res> {
  __$$_MoneyWithdrawnCopyWithImpl(
      _$_MoneyWithdrawn _value, $Res Function(_$_MoneyWithdrawn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iban = null,
  }) {
    return _then(_$_MoneyWithdrawn(
      iban: null == iban
          ? _value.iban
          : iban // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MoneyWithdrawn implements _MoneyWithdrawn {
  const _$_MoneyWithdrawn({required this.iban});

  @override
  final String iban;

  @override
  String toString() {
    return 'MainEvent.moneyWithdrawn(iban: $iban)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoneyWithdrawn &&
            (identical(other.iban, iban) || other.iban == iban));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iban);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoneyWithdrawnCopyWith<_$_MoneyWithdrawn> get copyWith =>
      __$$_MoneyWithdrawnCopyWithImpl<_$_MoneyWithdrawn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() accountFetched,
    required TResult Function(String iban) moneyWithdrawn,
  }) {
    return moneyWithdrawn(iban);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? accountFetched,
    TResult? Function(String iban)? moneyWithdrawn,
  }) {
    return moneyWithdrawn?.call(iban);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? accountFetched,
    TResult Function(String iban)? moneyWithdrawn,
    required TResult orElse(),
  }) {
    if (moneyWithdrawn != null) {
      return moneyWithdrawn(iban);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountFetched value) accountFetched,
    required TResult Function(_MoneyWithdrawn value) moneyWithdrawn,
  }) {
    return moneyWithdrawn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountFetched value)? accountFetched,
    TResult? Function(_MoneyWithdrawn value)? moneyWithdrawn,
  }) {
    return moneyWithdrawn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountFetched value)? accountFetched,
    TResult Function(_MoneyWithdrawn value)? moneyWithdrawn,
    required TResult orElse(),
  }) {
    if (moneyWithdrawn != null) {
      return moneyWithdrawn(this);
    }
    return orElse();
  }
}

abstract class _MoneyWithdrawn implements MainEvent {
  const factory _MoneyWithdrawn({required final String iban}) =
      _$_MoneyWithdrawn;

  String get iban;
  @JsonKey(ignore: true)
  _$$_MoneyWithdrawnCopyWith<_$_MoneyWithdrawn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  MainStatus get status => throw _privateConstructorUsedError;
  Account? get account => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call({MainStatus status, Account? account});

  $AccountCopyWith<$Res>? get account;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? account = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MainStatus,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res>? get account {
    if (_value.account == null) {
      return null;
    }

    return $AccountCopyWith<$Res>(_value.account!, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MainStateCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory _$$_MainStateCopyWith(
          _$_MainState value, $Res Function(_$_MainState) then) =
      __$$_MainStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainStatus status, Account? account});

  @override
  $AccountCopyWith<$Res>? get account;
}

/// @nodoc
class __$$_MainStateCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_MainState>
    implements _$$_MainStateCopyWith<$Res> {
  __$$_MainStateCopyWithImpl(
      _$_MainState _value, $Res Function(_$_MainState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? account = freezed,
  }) {
    return _then(_$_MainState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MainStatus,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account?,
    ));
  }
}

/// @nodoc

class _$_MainState implements _MainState {
  const _$_MainState({this.status = MainStatus.initial, this.account});

  @override
  @JsonKey()
  final MainStatus status;
  @override
  final Account? account;

  @override
  String toString() {
    return 'MainState(status: $status, account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainStateCopyWith<_$_MainState> get copyWith =>
      __$$_MainStateCopyWithImpl<_$_MainState>(this, _$identity);
}

abstract class _MainState implements MainState {
  const factory _MainState({final MainStatus status, final Account? account}) =
      _$_MainState;

  @override
  MainStatus get status;
  @override
  Account? get account;
  @override
  @JsonKey(ignore: true)
  _$$_MainStateCopyWith<_$_MainState> get copyWith =>
      throw _privateConstructorUsedError;
}
