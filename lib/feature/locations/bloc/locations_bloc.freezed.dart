// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            int price,
            int capacity,
            String addressLine1,
            String? addressLine2,
            List<File> images,
            Account owner)
        locationCreated,
    required TResult Function(String? email) locationsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int price, int capacity, String addressLine1,
            String? addressLine2, List<File> images, Account owner)?
        locationCreated,
    TResult? Function(String? email)? locationsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int price, int capacity, String addressLine1,
            String? addressLine2, List<File> images, Account owner)?
        locationCreated,
    TResult Function(String? email)? locationsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationsCreated value) locationCreated,
    required TResult Function(_LocationsFetched value) locationsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationsCreated value)? locationCreated,
    TResult? Function(_LocationsFetched value)? locationsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationsCreated value)? locationCreated,
    TResult Function(_LocationsFetched value)? locationsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsEventCopyWith<$Res> {
  factory $LocationsEventCopyWith(
          LocationsEvent value, $Res Function(LocationsEvent) then) =
      _$LocationsEventCopyWithImpl<$Res, LocationsEvent>;
}

/// @nodoc
class _$LocationsEventCopyWithImpl<$Res, $Val extends LocationsEvent>
    implements $LocationsEventCopyWith<$Res> {
  _$LocationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LocationsCreatedCopyWith<$Res> {
  factory _$$_LocationsCreatedCopyWith(
          _$_LocationsCreated value, $Res Function(_$_LocationsCreated) then) =
      __$$_LocationsCreatedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      int price,
      int capacity,
      String addressLine1,
      String? addressLine2,
      List<File> images,
      Account owner});

  $AccountCopyWith<$Res> get owner;
}

/// @nodoc
class __$$_LocationsCreatedCopyWithImpl<$Res>
    extends _$LocationsEventCopyWithImpl<$Res, _$_LocationsCreated>
    implements _$$_LocationsCreatedCopyWith<$Res> {
  __$$_LocationsCreatedCopyWithImpl(
      _$_LocationsCreated _value, $Res Function(_$_LocationsCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? capacity = null,
    Object? addressLine1 = null,
    Object? addressLine2 = freezed,
    Object? images = null,
    Object? owner = null,
  }) {
    return _then(_$_LocationsCreated(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      addressLine1: null == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get owner {
    return $AccountCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc

class _$_LocationsCreated implements _LocationsCreated {
  const _$_LocationsCreated(
      {required this.name,
      required this.price,
      required this.capacity,
      required this.addressLine1,
      this.addressLine2,
      required final List<File> images,
      required this.owner})
      : _images = images;

  @override
  final String name;
  @override
  final int price;
  @override
  final int capacity;
  @override
  final String addressLine1;
  @override
  final String? addressLine2;
  final List<File> _images;
  @override
  List<File> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final Account owner;

  @override
  String toString() {
    return 'LocationsEvent.locationCreated(name: $name, price: $price, capacity: $capacity, addressLine1: $addressLine1, addressLine2: $addressLine2, images: $images, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationsCreated &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.addressLine1, addressLine1) ||
                other.addressLine1 == addressLine1) &&
            (identical(other.addressLine2, addressLine2) ||
                other.addressLine2 == addressLine2) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      price,
      capacity,
      addressLine1,
      addressLine2,
      const DeepCollectionEquality().hash(_images),
      owner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationsCreatedCopyWith<_$_LocationsCreated> get copyWith =>
      __$$_LocationsCreatedCopyWithImpl<_$_LocationsCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            int price,
            int capacity,
            String addressLine1,
            String? addressLine2,
            List<File> images,
            Account owner)
        locationCreated,
    required TResult Function(String? email) locationsFetched,
  }) {
    return locationCreated(
        name, price, capacity, addressLine1, addressLine2, images, owner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int price, int capacity, String addressLine1,
            String? addressLine2, List<File> images, Account owner)?
        locationCreated,
    TResult? Function(String? email)? locationsFetched,
  }) {
    return locationCreated?.call(
        name, price, capacity, addressLine1, addressLine2, images, owner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int price, int capacity, String addressLine1,
            String? addressLine2, List<File> images, Account owner)?
        locationCreated,
    TResult Function(String? email)? locationsFetched,
    required TResult orElse(),
  }) {
    if (locationCreated != null) {
      return locationCreated(
          name, price, capacity, addressLine1, addressLine2, images, owner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationsCreated value) locationCreated,
    required TResult Function(_LocationsFetched value) locationsFetched,
  }) {
    return locationCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationsCreated value)? locationCreated,
    TResult? Function(_LocationsFetched value)? locationsFetched,
  }) {
    return locationCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationsCreated value)? locationCreated,
    TResult Function(_LocationsFetched value)? locationsFetched,
    required TResult orElse(),
  }) {
    if (locationCreated != null) {
      return locationCreated(this);
    }
    return orElse();
  }
}

abstract class _LocationsCreated implements LocationsEvent {
  const factory _LocationsCreated(
      {required final String name,
      required final int price,
      required final int capacity,
      required final String addressLine1,
      final String? addressLine2,
      required final List<File> images,
      required final Account owner}) = _$_LocationsCreated;

  String get name;
  int get price;
  int get capacity;
  String get addressLine1;
  String? get addressLine2;
  List<File> get images;
  Account get owner;
  @JsonKey(ignore: true)
  _$$_LocationsCreatedCopyWith<_$_LocationsCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocationsFetchedCopyWith<$Res> {
  factory _$$_LocationsFetchedCopyWith(
          _$_LocationsFetched value, $Res Function(_$_LocationsFetched) then) =
      __$$_LocationsFetchedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? email});
}

/// @nodoc
class __$$_LocationsFetchedCopyWithImpl<$Res>
    extends _$LocationsEventCopyWithImpl<$Res, _$_LocationsFetched>
    implements _$$_LocationsFetchedCopyWith<$Res> {
  __$$_LocationsFetchedCopyWithImpl(
      _$_LocationsFetched _value, $Res Function(_$_LocationsFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$_LocationsFetched(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LocationsFetched implements _LocationsFetched {
  const _$_LocationsFetched({this.email});

  @override
  final String? email;

  @override
  String toString() {
    return 'LocationsEvent.locationsFetched(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationsFetched &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationsFetchedCopyWith<_$_LocationsFetched> get copyWith =>
      __$$_LocationsFetchedCopyWithImpl<_$_LocationsFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            int price,
            int capacity,
            String addressLine1,
            String? addressLine2,
            List<File> images,
            Account owner)
        locationCreated,
    required TResult Function(String? email) locationsFetched,
  }) {
    return locationsFetched(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int price, int capacity, String addressLine1,
            String? addressLine2, List<File> images, Account owner)?
        locationCreated,
    TResult? Function(String? email)? locationsFetched,
  }) {
    return locationsFetched?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int price, int capacity, String addressLine1,
            String? addressLine2, List<File> images, Account owner)?
        locationCreated,
    TResult Function(String? email)? locationsFetched,
    required TResult orElse(),
  }) {
    if (locationsFetched != null) {
      return locationsFetched(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationsCreated value) locationCreated,
    required TResult Function(_LocationsFetched value) locationsFetched,
  }) {
    return locationsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationsCreated value)? locationCreated,
    TResult? Function(_LocationsFetched value)? locationsFetched,
  }) {
    return locationsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationsCreated value)? locationCreated,
    TResult Function(_LocationsFetched value)? locationsFetched,
    required TResult orElse(),
  }) {
    if (locationsFetched != null) {
      return locationsFetched(this);
    }
    return orElse();
  }
}

abstract class _LocationsFetched implements LocationsEvent {
  const factory _LocationsFetched({final String? email}) = _$_LocationsFetched;

  String? get email;
  @JsonKey(ignore: true)
  _$$_LocationsFetchedCopyWith<_$_LocationsFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationsState {
  LocationsStatus get status => throw _privateConstructorUsedError;
  List<Location> get locations => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationsStateCopyWith<LocationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsStateCopyWith<$Res> {
  factory $LocationsStateCopyWith(
          LocationsState value, $Res Function(LocationsState) then) =
      _$LocationsStateCopyWithImpl<$Res, LocationsState>;
  @useResult
  $Res call({LocationsStatus status, List<Location> locations});
}

/// @nodoc
class _$LocationsStateCopyWithImpl<$Res, $Val extends LocationsState>
    implements $LocationsStateCopyWith<$Res> {
  _$LocationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? locations = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LocationsStatus,
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationsStateCopyWith<$Res>
    implements $LocationsStateCopyWith<$Res> {
  factory _$$_LocationsStateCopyWith(
          _$_LocationsState value, $Res Function(_$_LocationsState) then) =
      __$$_LocationsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocationsStatus status, List<Location> locations});
}

/// @nodoc
class __$$_LocationsStateCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res, _$_LocationsState>
    implements _$$_LocationsStateCopyWith<$Res> {
  __$$_LocationsStateCopyWithImpl(
      _$_LocationsState _value, $Res Function(_$_LocationsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? locations = null,
  }) {
    return _then(_$_LocationsState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LocationsStatus,
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location>,
    ));
  }
}

/// @nodoc

class _$_LocationsState implements _LocationsState {
  const _$_LocationsState(
      {this.status = LocationsStatus.initial,
      final List<Location> locations = const []})
      : _locations = locations;

  @override
  @JsonKey()
  final LocationsStatus status;
  final List<Location> _locations;
  @override
  @JsonKey()
  List<Location> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  @override
  String toString() {
    return 'LocationsState(status: $status, locations: $locations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationsState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_locations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationsStateCopyWith<_$_LocationsState> get copyWith =>
      __$$_LocationsStateCopyWithImpl<_$_LocationsState>(this, _$identity);
}

abstract class _LocationsState implements LocationsState {
  const factory _LocationsState(
      {final LocationsStatus status,
      final List<Location> locations}) = _$_LocationsState;

  @override
  LocationsStatus get status;
  @override
  List<Location> get locations;
  @override
  @JsonKey(ignore: true)
  _$$_LocationsStateCopyWith<_$_LocationsState> get copyWith =>
      throw _privateConstructorUsedError;
}
