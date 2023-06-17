// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Reservation _$ReservationFromJson(Map<String, dynamic> json) {
  return _Reservation.fromJson(json);
}

/// @nodoc
mixin _$Reservation {
  List<DateTime> get bookedDates => throw _privateConstructorUsedError;
  bool get isDoorOpen => throw _privateConstructorUsedError;
  String? get openDoorCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReservationCopyWith<Reservation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationCopyWith<$Res> {
  factory $ReservationCopyWith(
          Reservation value, $Res Function(Reservation) then) =
      _$ReservationCopyWithImpl<$Res, Reservation>;
  @useResult
  $Res call(
      {List<DateTime> bookedDates, bool isDoorOpen, String? openDoorCode});
}

/// @nodoc
class _$ReservationCopyWithImpl<$Res, $Val extends Reservation>
    implements $ReservationCopyWith<$Res> {
  _$ReservationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookedDates = null,
    Object? isDoorOpen = null,
    Object? openDoorCode = freezed,
  }) {
    return _then(_value.copyWith(
      bookedDates: null == bookedDates
          ? _value.bookedDates
          : bookedDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      isDoorOpen: null == isDoorOpen
          ? _value.isDoorOpen
          : isDoorOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      openDoorCode: freezed == openDoorCode
          ? _value.openDoorCode
          : openDoorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReservationCopyWith<$Res>
    implements $ReservationCopyWith<$Res> {
  factory _$$_ReservationCopyWith(
          _$_Reservation value, $Res Function(_$_Reservation) then) =
      __$$_ReservationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DateTime> bookedDates, bool isDoorOpen, String? openDoorCode});
}

/// @nodoc
class __$$_ReservationCopyWithImpl<$Res>
    extends _$ReservationCopyWithImpl<$Res, _$_Reservation>
    implements _$$_ReservationCopyWith<$Res> {
  __$$_ReservationCopyWithImpl(
      _$_Reservation _value, $Res Function(_$_Reservation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookedDates = null,
    Object? isDoorOpen = null,
    Object? openDoorCode = freezed,
  }) {
    return _then(_$_Reservation(
      bookedDates: null == bookedDates
          ? _value._bookedDates
          : bookedDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      isDoorOpen: null == isDoorOpen
          ? _value.isDoorOpen
          : isDoorOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      openDoorCode: freezed == openDoorCode
          ? _value.openDoorCode
          : openDoorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Reservation implements _Reservation {
  _$_Reservation(
      {final List<DateTime> bookedDates = const [],
      this.isDoorOpen = false,
      this.openDoorCode})
      : _bookedDates = bookedDates;

  factory _$_Reservation.fromJson(Map<String, dynamic> json) =>
      _$$_ReservationFromJson(json);

  final List<DateTime> _bookedDates;
  @override
  @JsonKey()
  List<DateTime> get bookedDates {
    if (_bookedDates is EqualUnmodifiableListView) return _bookedDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookedDates);
  }

  @override
  @JsonKey()
  final bool isDoorOpen;
  @override
  final String? openDoorCode;

  @override
  String toString() {
    return 'Reservation(bookedDates: $bookedDates, isDoorOpen: $isDoorOpen, openDoorCode: $openDoorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reservation &&
            const DeepCollectionEquality()
                .equals(other._bookedDates, _bookedDates) &&
            (identical(other.isDoorOpen, isDoorOpen) ||
                other.isDoorOpen == isDoorOpen) &&
            (identical(other.openDoorCode, openDoorCode) ||
                other.openDoorCode == openDoorCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bookedDates),
      isDoorOpen,
      openDoorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReservationCopyWith<_$_Reservation> get copyWith =>
      __$$_ReservationCopyWithImpl<_$_Reservation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReservationToJson(
      this,
    );
  }
}

abstract class _Reservation implements Reservation {
  factory _Reservation(
      {final List<DateTime> bookedDates,
      final bool isDoorOpen,
      final String? openDoorCode}) = _$_Reservation;

  factory _Reservation.fromJson(Map<String, dynamic> json) =
      _$_Reservation.fromJson;

  @override
  List<DateTime> get bookedDates;
  @override
  bool get isDoorOpen;
  @override
  String? get openDoorCode;
  @override
  @JsonKey(ignore: true)
  _$$_ReservationCopyWith<_$_Reservation> get copyWith =>
      throw _privateConstructorUsedError;
}
