// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) checkUserExists,
    required TResult Function(
            String firstName, String lastName, String password)
        accountSignedUp,
    required TResult Function(String password) accountLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? checkUserExists,
    TResult? Function(String firstName, String lastName, String password)?
        accountSignedUp,
    TResult? Function(String password)? accountLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? checkUserExists,
    TResult Function(String firstName, String lastName, String password)?
        accountSignedUp,
    TResult Function(String password)? accountLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUserExists value) checkUserExists,
    required TResult Function(_AccountSignedUp value) accountSignedUp,
    required TResult Function(_AccountLoggedIn value) accountLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUserExists value)? checkUserExists,
    TResult? Function(_AccountSignedUp value)? accountSignedUp,
    TResult? Function(_AccountLoggedIn value)? accountLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUserExists value)? checkUserExists,
    TResult Function(_AccountSignedUp value)? accountSignedUp,
    TResult Function(_AccountLoggedIn value)? accountLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CheckUserExistsCopyWith<$Res> {
  factory _$$_CheckUserExistsCopyWith(
          _$_CheckUserExists value, $Res Function(_$_CheckUserExists) then) =
      __$$_CheckUserExistsCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_CheckUserExistsCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_CheckUserExists>
    implements _$$_CheckUserExistsCopyWith<$Res> {
  __$$_CheckUserExistsCopyWithImpl(
      _$_CheckUserExists _value, $Res Function(_$_CheckUserExists) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_CheckUserExists(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CheckUserExists implements _CheckUserExists {
  const _$_CheckUserExists({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.checkUserExists(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckUserExists &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckUserExistsCopyWith<_$_CheckUserExists> get copyWith =>
      __$$_CheckUserExistsCopyWithImpl<_$_CheckUserExists>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) checkUserExists,
    required TResult Function(
            String firstName, String lastName, String password)
        accountSignedUp,
    required TResult Function(String password) accountLoggedIn,
  }) {
    return checkUserExists(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? checkUserExists,
    TResult? Function(String firstName, String lastName, String password)?
        accountSignedUp,
    TResult? Function(String password)? accountLoggedIn,
  }) {
    return checkUserExists?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? checkUserExists,
    TResult Function(String firstName, String lastName, String password)?
        accountSignedUp,
    TResult Function(String password)? accountLoggedIn,
    required TResult orElse(),
  }) {
    if (checkUserExists != null) {
      return checkUserExists(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUserExists value) checkUserExists,
    required TResult Function(_AccountSignedUp value) accountSignedUp,
    required TResult Function(_AccountLoggedIn value) accountLoggedIn,
  }) {
    return checkUserExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUserExists value)? checkUserExists,
    TResult? Function(_AccountSignedUp value)? accountSignedUp,
    TResult? Function(_AccountLoggedIn value)? accountLoggedIn,
  }) {
    return checkUserExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUserExists value)? checkUserExists,
    TResult Function(_AccountSignedUp value)? accountSignedUp,
    TResult Function(_AccountLoggedIn value)? accountLoggedIn,
    required TResult orElse(),
  }) {
    if (checkUserExists != null) {
      return checkUserExists(this);
    }
    return orElse();
  }
}

abstract class _CheckUserExists implements AuthEvent {
  const factory _CheckUserExists({required final String email}) =
      _$_CheckUserExists;

  String get email;
  @JsonKey(ignore: true)
  _$$_CheckUserExistsCopyWith<_$_CheckUserExists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AccountSignedUpCopyWith<$Res> {
  factory _$$_AccountSignedUpCopyWith(
          _$_AccountSignedUp value, $Res Function(_$_AccountSignedUp) then) =
      __$$_AccountSignedUpCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName, String lastName, String password});
}

/// @nodoc
class __$$_AccountSignedUpCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AccountSignedUp>
    implements _$$_AccountSignedUpCopyWith<$Res> {
  __$$_AccountSignedUpCopyWithImpl(
      _$_AccountSignedUp _value, $Res Function(_$_AccountSignedUp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? password = null,
  }) {
    return _then(_$_AccountSignedUp(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AccountSignedUp implements _AccountSignedUp {
  const _$_AccountSignedUp(
      {required this.firstName,
      required this.lastName,
      required this.password});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.accountSignedUp(firstName: $firstName, lastName: $lastName, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountSignedUp &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountSignedUpCopyWith<_$_AccountSignedUp> get copyWith =>
      __$$_AccountSignedUpCopyWithImpl<_$_AccountSignedUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) checkUserExists,
    required TResult Function(
            String firstName, String lastName, String password)
        accountSignedUp,
    required TResult Function(String password) accountLoggedIn,
  }) {
    return accountSignedUp(firstName, lastName, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? checkUserExists,
    TResult? Function(String firstName, String lastName, String password)?
        accountSignedUp,
    TResult? Function(String password)? accountLoggedIn,
  }) {
    return accountSignedUp?.call(firstName, lastName, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? checkUserExists,
    TResult Function(String firstName, String lastName, String password)?
        accountSignedUp,
    TResult Function(String password)? accountLoggedIn,
    required TResult orElse(),
  }) {
    if (accountSignedUp != null) {
      return accountSignedUp(firstName, lastName, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUserExists value) checkUserExists,
    required TResult Function(_AccountSignedUp value) accountSignedUp,
    required TResult Function(_AccountLoggedIn value) accountLoggedIn,
  }) {
    return accountSignedUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUserExists value)? checkUserExists,
    TResult? Function(_AccountSignedUp value)? accountSignedUp,
    TResult? Function(_AccountLoggedIn value)? accountLoggedIn,
  }) {
    return accountSignedUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUserExists value)? checkUserExists,
    TResult Function(_AccountSignedUp value)? accountSignedUp,
    TResult Function(_AccountLoggedIn value)? accountLoggedIn,
    required TResult orElse(),
  }) {
    if (accountSignedUp != null) {
      return accountSignedUp(this);
    }
    return orElse();
  }
}

abstract class _AccountSignedUp implements AuthEvent {
  const factory _AccountSignedUp(
      {required final String firstName,
      required final String lastName,
      required final String password}) = _$_AccountSignedUp;

  String get firstName;
  String get lastName;
  String get password;
  @JsonKey(ignore: true)
  _$$_AccountSignedUpCopyWith<_$_AccountSignedUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AccountLoggedInCopyWith<$Res> {
  factory _$$_AccountLoggedInCopyWith(
          _$_AccountLoggedIn value, $Res Function(_$_AccountLoggedIn) then) =
      __$$_AccountLoggedInCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_AccountLoggedInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AccountLoggedIn>
    implements _$$_AccountLoggedInCopyWith<$Res> {
  __$$_AccountLoggedInCopyWithImpl(
      _$_AccountLoggedIn _value, $Res Function(_$_AccountLoggedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_AccountLoggedIn(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AccountLoggedIn implements _AccountLoggedIn {
  const _$_AccountLoggedIn({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.accountLoggedIn(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountLoggedIn &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountLoggedInCopyWith<_$_AccountLoggedIn> get copyWith =>
      __$$_AccountLoggedInCopyWithImpl<_$_AccountLoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) checkUserExists,
    required TResult Function(
            String firstName, String lastName, String password)
        accountSignedUp,
    required TResult Function(String password) accountLoggedIn,
  }) {
    return accountLoggedIn(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? checkUserExists,
    TResult? Function(String firstName, String lastName, String password)?
        accountSignedUp,
    TResult? Function(String password)? accountLoggedIn,
  }) {
    return accountLoggedIn?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? checkUserExists,
    TResult Function(String firstName, String lastName, String password)?
        accountSignedUp,
    TResult Function(String password)? accountLoggedIn,
    required TResult orElse(),
  }) {
    if (accountLoggedIn != null) {
      return accountLoggedIn(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUserExists value) checkUserExists,
    required TResult Function(_AccountSignedUp value) accountSignedUp,
    required TResult Function(_AccountLoggedIn value) accountLoggedIn,
  }) {
    return accountLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUserExists value)? checkUserExists,
    TResult? Function(_AccountSignedUp value)? accountSignedUp,
    TResult? Function(_AccountLoggedIn value)? accountLoggedIn,
  }) {
    return accountLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUserExists value)? checkUserExists,
    TResult Function(_AccountSignedUp value)? accountSignedUp,
    TResult Function(_AccountLoggedIn value)? accountLoggedIn,
    required TResult orElse(),
  }) {
    if (accountLoggedIn != null) {
      return accountLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _AccountLoggedIn implements AuthEvent {
  const factory _AccountLoggedIn({required final String password}) =
      _$_AccountLoggedIn;

  String get password;
  @JsonKey(ignore: true)
  _$$_AccountLoggedInCopyWith<_$_AccountLoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  AuthStatus get status => throw _privateConstructorUsedError;
  AccountType get type => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({AuthStatus status, AccountType type, String? email});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? type = null,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AccountType,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthStatus status, AccountType type, String? email});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? type = null,
    Object? email = freezed,
  }) {
    return _then(_$_AuthState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AccountType,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  _$_AuthState(
      {this.status = AuthStatus.initial, required this.type, this.email});

  @override
  @JsonKey()
  final AuthStatus status;
  @override
  final AccountType type;
  @override
  final String? email;

  @override
  String toString() {
    return 'AuthState(status: $status, type: $type, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, type, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  factory _AuthState(
      {final AuthStatus status,
      required final AccountType type,
      final String? email}) = _$_AuthState;

  @override
  AuthStatus get status;
  @override
  AccountType get type;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
