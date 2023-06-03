// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError e) http,
    required TResult Function(Error e) parsing,
    required TResult Function() unknown,
    required TResult Function() noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError e)? http,
    TResult? Function(Error e)? parsing,
    TResult? Function()? unknown,
    TResult? Function()? noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError e)? http,
    TResult Function(Error e)? parsing,
    TResult Function()? unknown,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Http value) http,
    required TResult Function(_Parsing value) parsing,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_NoInternet value) noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Http value)? http,
    TResult? Function(_Parsing value)? parsing,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_NoInternet value)? noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Http value)? http,
    TResult Function(_Parsing value)? parsing,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_NoInternet value)? noInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_HttpCopyWith<$Res> {
  factory _$$_HttpCopyWith(_$_Http value, $Res Function(_$_Http) then) =
      __$$_HttpCopyWithImpl<$Res>;
  @useResult
  $Res call({DioError e});
}

/// @nodoc
class __$$_HttpCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res, _$_Http>
    implements _$$_HttpCopyWith<$Res> {
  __$$_HttpCopyWithImpl(_$_Http _value, $Res Function(_$_Http) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$_Http(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as DioError,
    ));
  }
}

/// @nodoc

class _$_Http implements _Http {
  const _$_Http(this.e);

  @override
  final DioError e;

  @override
  String toString() {
    return 'Failure.http(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Http &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HttpCopyWith<_$_Http> get copyWith =>
      __$$_HttpCopyWithImpl<_$_Http>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError e) http,
    required TResult Function(Error e) parsing,
    required TResult Function() unknown,
    required TResult Function() noInternet,
  }) {
    return http(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError e)? http,
    TResult? Function(Error e)? parsing,
    TResult? Function()? unknown,
    TResult? Function()? noInternet,
  }) {
    return http?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError e)? http,
    TResult Function(Error e)? parsing,
    TResult Function()? unknown,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) {
    if (http != null) {
      return http(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Http value) http,
    required TResult Function(_Parsing value) parsing,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_NoInternet value) noInternet,
  }) {
    return http(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Http value)? http,
    TResult? Function(_Parsing value)? parsing,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_NoInternet value)? noInternet,
  }) {
    return http?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Http value)? http,
    TResult Function(_Parsing value)? parsing,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_NoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (http != null) {
      return http(this);
    }
    return orElse();
  }
}

abstract class _Http implements Failure {
  const factory _Http(final DioError e) = _$_Http;

  DioError get e;
  @JsonKey(ignore: true)
  _$$_HttpCopyWith<_$_Http> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ParsingCopyWith<$Res> {
  factory _$$_ParsingCopyWith(
          _$_Parsing value, $Res Function(_$_Parsing) then) =
      __$$_ParsingCopyWithImpl<$Res>;
  @useResult
  $Res call({Error e});
}

/// @nodoc
class __$$_ParsingCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_Parsing>
    implements _$$_ParsingCopyWith<$Res> {
  __$$_ParsingCopyWithImpl(_$_Parsing _value, $Res Function(_$_Parsing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$_Parsing(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$_Parsing implements _Parsing {
  const _$_Parsing(this.e);

  @override
  final Error e;

  @override
  String toString() {
    return 'Failure.parsing(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Parsing &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParsingCopyWith<_$_Parsing> get copyWith =>
      __$$_ParsingCopyWithImpl<_$_Parsing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError e) http,
    required TResult Function(Error e) parsing,
    required TResult Function() unknown,
    required TResult Function() noInternet,
  }) {
    return parsing(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError e)? http,
    TResult? Function(Error e)? parsing,
    TResult? Function()? unknown,
    TResult? Function()? noInternet,
  }) {
    return parsing?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError e)? http,
    TResult Function(Error e)? parsing,
    TResult Function()? unknown,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) {
    if (parsing != null) {
      return parsing(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Http value) http,
    required TResult Function(_Parsing value) parsing,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_NoInternet value) noInternet,
  }) {
    return parsing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Http value)? http,
    TResult? Function(_Parsing value)? parsing,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_NoInternet value)? noInternet,
  }) {
    return parsing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Http value)? http,
    TResult Function(_Parsing value)? parsing,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_NoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (parsing != null) {
      return parsing(this);
    }
    return orElse();
  }
}

abstract class _Parsing implements Failure {
  const factory _Parsing(final Error e) = _$_Parsing;

  Error get e;
  @JsonKey(ignore: true)
  _$$_ParsingCopyWith<_$_Parsing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnknownCopyWith<$Res> {
  factory _$$_UnknownCopyWith(
          _$_Unknown value, $Res Function(_$_Unknown) then) =
      __$$_UnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnknownCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_Unknown>
    implements _$$_UnknownCopyWith<$Res> {
  __$$_UnknownCopyWithImpl(_$_Unknown _value, $Res Function(_$_Unknown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Unknown implements _Unknown {
  const _$_Unknown();

  @override
  String toString() {
    return 'Failure.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError e) http,
    required TResult Function(Error e) parsing,
    required TResult Function() unknown,
    required TResult Function() noInternet,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError e)? http,
    TResult? Function(Error e)? parsing,
    TResult? Function()? unknown,
    TResult? Function()? noInternet,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError e)? http,
    TResult Function(Error e)? parsing,
    TResult Function()? unknown,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Http value) http,
    required TResult Function(_Parsing value) parsing,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_NoInternet value) noInternet,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Http value)? http,
    TResult? Function(_Parsing value)? parsing,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_NoInternet value)? noInternet,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Http value)? http,
    TResult Function(_Parsing value)? parsing,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_NoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements Failure {
  const factory _Unknown() = _$_Unknown;
}

/// @nodoc
abstract class _$$_NoInternetCopyWith<$Res> {
  factory _$$_NoInternetCopyWith(
          _$_NoInternet value, $Res Function(_$_NoInternet) then) =
      __$$_NoInternetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoInternetCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_NoInternet>
    implements _$$_NoInternetCopyWith<$Res> {
  __$$_NoInternetCopyWithImpl(
      _$_NoInternet _value, $Res Function(_$_NoInternet) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoInternet implements _NoInternet {
  const _$_NoInternet();

  @override
  String toString() {
    return 'Failure.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoInternet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError e) http,
    required TResult Function(Error e) parsing,
    required TResult Function() unknown,
    required TResult Function() noInternet,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError e)? http,
    TResult? Function(Error e)? parsing,
    TResult? Function()? unknown,
    TResult? Function()? noInternet,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError e)? http,
    TResult Function(Error e)? parsing,
    TResult Function()? unknown,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Http value) http,
    required TResult Function(_Parsing value) parsing,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_NoInternet value) noInternet,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Http value)? http,
    TResult? Function(_Parsing value)? parsing,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_NoInternet value)? noInternet,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Http value)? http,
    TResult Function(_Parsing value)? parsing,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_NoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet implements Failure {
  const factory _NoInternet() = _$_NoInternet;
}
