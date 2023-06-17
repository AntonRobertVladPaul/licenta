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
    required TResult Function(Location location, List<File> images)
        locationCreated,
    required TResult Function(String? email) locationsFetched,
    required TResult Function(Location location, List<File> images)
        locationUpdated,
    required TResult Function(String locationId) locationDeleted,
    required TResult Function(String locationId, String imageUrl) imageDeleted,
    required TResult Function(String locationId) locationFetched,
    required TResult Function(List<DateTime> bookedDates) bookDatesSaved,
    required TResult Function(
            int amount, String cardNumber, String cvv, String expiryDate)
        locationBooked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Location location, List<File> images)? locationCreated,
    TResult? Function(String? email)? locationsFetched,
    TResult? Function(Location location, List<File> images)? locationUpdated,
    TResult? Function(String locationId)? locationDeleted,
    TResult? Function(String locationId, String imageUrl)? imageDeleted,
    TResult? Function(String locationId)? locationFetched,
    TResult? Function(List<DateTime> bookedDates)? bookDatesSaved,
    TResult? Function(
            int amount, String cardNumber, String cvv, String expiryDate)?
        locationBooked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Location location, List<File> images)? locationCreated,
    TResult Function(String? email)? locationsFetched,
    TResult Function(Location location, List<File> images)? locationUpdated,
    TResult Function(String locationId)? locationDeleted,
    TResult Function(String locationId, String imageUrl)? imageDeleted,
    TResult Function(String locationId)? locationFetched,
    TResult Function(List<DateTime> bookedDates)? bookDatesSaved,
    TResult Function(
            int amount, String cardNumber, String cvv, String expiryDate)?
        locationBooked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationCreated value) locationCreated,
    required TResult Function(_LocationsFetched value) locationsFetched,
    required TResult Function(_LocationUpdated value) locationUpdated,
    required TResult Function(_LocationDeleted value) locationDeleted,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_LocationFetched value) locationFetched,
    required TResult Function(_BookDatesSaved value) bookDatesSaved,
    required TResult Function(_LocationBooked value) locationBooked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationCreated value)? locationCreated,
    TResult? Function(_LocationsFetched value)? locationsFetched,
    TResult? Function(_LocationUpdated value)? locationUpdated,
    TResult? Function(_LocationDeleted value)? locationDeleted,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_LocationFetched value)? locationFetched,
    TResult? Function(_BookDatesSaved value)? bookDatesSaved,
    TResult? Function(_LocationBooked value)? locationBooked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationCreated value)? locationCreated,
    TResult Function(_LocationsFetched value)? locationsFetched,
    TResult Function(_LocationUpdated value)? locationUpdated,
    TResult Function(_LocationDeleted value)? locationDeleted,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_LocationFetched value)? locationFetched,
    TResult Function(_BookDatesSaved value)? bookDatesSaved,
    TResult Function(_LocationBooked value)? locationBooked,
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
abstract class _$$_LocationCreatedCopyWith<$Res> {
  factory _$$_LocationCreatedCopyWith(
          _$_LocationCreated value, $Res Function(_$_LocationCreated) then) =
      __$$_LocationCreatedCopyWithImpl<$Res>;
  @useResult
  $Res call({Location location, List<File> images});

  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$_LocationCreatedCopyWithImpl<$Res>
    extends _$LocationsEventCopyWithImpl<$Res, _$_LocationCreated>
    implements _$$_LocationCreatedCopyWith<$Res> {
  __$$_LocationCreatedCopyWithImpl(
      _$_LocationCreated _value, $Res Function(_$_LocationCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? images = null,
  }) {
    return _then(_$_LocationCreated(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc

class _$_LocationCreated implements _LocationCreated {
  const _$_LocationCreated(
      {required this.location, required final List<File> images})
      : _images = images;

  @override
  final Location location;
  final List<File> _images;
  @override
  List<File> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'LocationsEvent.locationCreated(location: $location, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationCreated &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, location, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationCreatedCopyWith<_$_LocationCreated> get copyWith =>
      __$$_LocationCreatedCopyWithImpl<_$_LocationCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Location location, List<File> images)
        locationCreated,
    required TResult Function(String? email) locationsFetched,
    required TResult Function(Location location, List<File> images)
        locationUpdated,
    required TResult Function(String locationId) locationDeleted,
    required TResult Function(String locationId, String imageUrl) imageDeleted,
    required TResult Function(String locationId) locationFetched,
    required TResult Function(List<DateTime> bookedDates) bookDatesSaved,
    required TResult Function(
            int amount, String cardNumber, String cvv, String expiryDate)
        locationBooked,
  }) {
    return locationCreated(location, images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Location location, List<File> images)? locationCreated,
    TResult? Function(String? email)? locationsFetched,
    TResult? Function(Location location, List<File> images)? locationUpdated,
    TResult? Function(String locationId)? locationDeleted,
    TResult? Function(String locationId, String imageUrl)? imageDeleted,
    TResult? Function(String locationId)? locationFetched,
    TResult? Function(List<DateTime> bookedDates)? bookDatesSaved,
    TResult? Function(
            int amount, String cardNumber, String cvv, String expiryDate)?
        locationBooked,
  }) {
    return locationCreated?.call(location, images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Location location, List<File> images)? locationCreated,
    TResult Function(String? email)? locationsFetched,
    TResult Function(Location location, List<File> images)? locationUpdated,
    TResult Function(String locationId)? locationDeleted,
    TResult Function(String locationId, String imageUrl)? imageDeleted,
    TResult Function(String locationId)? locationFetched,
    TResult Function(List<DateTime> bookedDates)? bookDatesSaved,
    TResult Function(
            int amount, String cardNumber, String cvv, String expiryDate)?
        locationBooked,
    required TResult orElse(),
  }) {
    if (locationCreated != null) {
      return locationCreated(location, images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationCreated value) locationCreated,
    required TResult Function(_LocationsFetched value) locationsFetched,
    required TResult Function(_LocationUpdated value) locationUpdated,
    required TResult Function(_LocationDeleted value) locationDeleted,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_LocationFetched value) locationFetched,
    required TResult Function(_BookDatesSaved value) bookDatesSaved,
    required TResult Function(_LocationBooked value) locationBooked,
  }) {
    return locationCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationCreated value)? locationCreated,
    TResult? Function(_LocationsFetched value)? locationsFetched,
    TResult? Function(_LocationUpdated value)? locationUpdated,
    TResult? Function(_LocationDeleted value)? locationDeleted,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_LocationFetched value)? locationFetched,
    TResult? Function(_BookDatesSaved value)? bookDatesSaved,
    TResult? Function(_LocationBooked value)? locationBooked,
  }) {
    return locationCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationCreated value)? locationCreated,
    TResult Function(_LocationsFetched value)? locationsFetched,
    TResult Function(_LocationUpdated value)? locationUpdated,
    TResult Function(_LocationDeleted value)? locationDeleted,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_LocationFetched value)? locationFetched,
    TResult Function(_BookDatesSaved value)? bookDatesSaved,
    TResult Function(_LocationBooked value)? locationBooked,
    required TResult orElse(),
  }) {
    if (locationCreated != null) {
      return locationCreated(this);
    }
    return orElse();
  }
}

abstract class _LocationCreated implements LocationsEvent {
  const factory _LocationCreated(
      {required final Location location,
      required final List<File> images}) = _$_LocationCreated;

  Location get location;
  List<File> get images;
  @JsonKey(ignore: true)
  _$$_LocationCreatedCopyWith<_$_LocationCreated> get copyWith =>
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
    required TResult Function(Location location, List<File> images)
        locationCreated,
    required TResult Function(String? email) locationsFetched,
    required TResult Function(Location location, List<File> images)
        locationUpdated,
    required TResult Function(String locationId) locationDeleted,
    required TResult Function(String locationId, String imageUrl) imageDeleted,
    required TResult Function(String locationId) locationFetched,
    required TResult Function(List<DateTime> bookedDates) bookDatesSaved,
    required TResult Function(
            int amount, String cardNumber, String cvv, String expiryDate)
        locationBooked,
  }) {
    return locationsFetched(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Location location, List<File> images)? locationCreated,
    TResult? Function(String? email)? locationsFetched,
    TResult? Function(Location location, List<File> images)? locationUpdated,
    TResult? Function(String locationId)? locationDeleted,
    TResult? Function(String locationId, String imageUrl)? imageDeleted,
    TResult? Function(String locationId)? locationFetched,
    TResult? Function(List<DateTime> bookedDates)? bookDatesSaved,
    TResult? Function(
            int amount, String cardNumber, String cvv, String expiryDate)?
        locationBooked,
  }) {
    return locationsFetched?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Location location, List<File> images)? locationCreated,
    TResult Function(String? email)? locationsFetched,
    TResult Function(Location location, List<File> images)? locationUpdated,
    TResult Function(String locationId)? locationDeleted,
    TResult Function(String locationId, String imageUrl)? imageDeleted,
    TResult Function(String locationId)? locationFetched,
    TResult Function(List<DateTime> bookedDates)? bookDatesSaved,
    TResult Function(
            int amount, String cardNumber, String cvv, String expiryDate)?
        locationBooked,
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
    required TResult Function(_LocationCreated value) locationCreated,
    required TResult Function(_LocationsFetched value) locationsFetched,
    required TResult Function(_LocationUpdated value) locationUpdated,
    required TResult Function(_LocationDeleted value) locationDeleted,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_LocationFetched value) locationFetched,
    required TResult Function(_BookDatesSaved value) bookDatesSaved,
    required TResult Function(_LocationBooked value) locationBooked,
  }) {
    return locationsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationCreated value)? locationCreated,
    TResult? Function(_LocationsFetched value)? locationsFetched,
    TResult? Function(_LocationUpdated value)? locationUpdated,
    TResult? Function(_LocationDeleted value)? locationDeleted,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_LocationFetched value)? locationFetched,
    TResult? Function(_BookDatesSaved value)? bookDatesSaved,
    TResult? Function(_LocationBooked value)? locationBooked,
  }) {
    return locationsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationCreated value)? locationCreated,
    TResult Function(_LocationsFetched value)? locationsFetched,
    TResult Function(_LocationUpdated value)? locationUpdated,
    TResult Function(_LocationDeleted value)? locationDeleted,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_LocationFetched value)? locationFetched,
    TResult Function(_BookDatesSaved value)? bookDatesSaved,
    TResult Function(_LocationBooked value)? locationBooked,
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
abstract class _$$_LocationUpdatedCopyWith<$Res> {
  factory _$$_LocationUpdatedCopyWith(
          _$_LocationUpdated value, $Res Function(_$_LocationUpdated) then) =
      __$$_LocationUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({Location location, List<File> images});

  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$_LocationUpdatedCopyWithImpl<$Res>
    extends _$LocationsEventCopyWithImpl<$Res, _$_LocationUpdated>
    implements _$$_LocationUpdatedCopyWith<$Res> {
  __$$_LocationUpdatedCopyWithImpl(
      _$_LocationUpdated _value, $Res Function(_$_LocationUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? images = null,
  }) {
    return _then(_$_LocationUpdated(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc

class _$_LocationUpdated implements _LocationUpdated {
  const _$_LocationUpdated(
      {required this.location, required final List<File> images})
      : _images = images;

  @override
  final Location location;
  final List<File> _images;
  @override
  List<File> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'LocationsEvent.locationUpdated(location: $location, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationUpdated &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, location, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationUpdatedCopyWith<_$_LocationUpdated> get copyWith =>
      __$$_LocationUpdatedCopyWithImpl<_$_LocationUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Location location, List<File> images)
        locationCreated,
    required TResult Function(String? email) locationsFetched,
    required TResult Function(Location location, List<File> images)
        locationUpdated,
    required TResult Function(String locationId) locationDeleted,
    required TResult Function(String locationId, String imageUrl) imageDeleted,
    required TResult Function(String locationId) locationFetched,
    required TResult Function(List<DateTime> bookedDates) bookDatesSaved,
    required TResult Function(
            int amount, String cardNumber, String cvv, String expiryDate)
        locationBooked,
  }) {
    return locationUpdated(location, images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Location location, List<File> images)? locationCreated,
    TResult? Function(String? email)? locationsFetched,
    TResult? Function(Location location, List<File> images)? locationUpdated,
    TResult? Function(String locationId)? locationDeleted,
    TResult? Function(String locationId, String imageUrl)? imageDeleted,
    TResult? Function(String locationId)? locationFetched,
    TResult? Function(List<DateTime> bookedDates)? bookDatesSaved,
    TResult? Function(
            int amount, String cardNumber, String cvv, String expiryDate)?
        locationBooked,
  }) {
    return locationUpdated?.call(location, images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Location location, List<File> images)? locationCreated,
    TResult Function(String? email)? locationsFetched,
    TResult Function(Location location, List<File> images)? locationUpdated,
    TResult Function(String locationId)? locationDeleted,
    TResult Function(String locationId, String imageUrl)? imageDeleted,
    TResult Function(String locationId)? locationFetched,
    TResult Function(List<DateTime> bookedDates)? bookDatesSaved,
    TResult Function(
            int amount, String cardNumber, String cvv, String expiryDate)?
        locationBooked,
    required TResult orElse(),
  }) {
    if (locationUpdated != null) {
      return locationUpdated(location, images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationCreated value) locationCreated,
    required TResult Function(_LocationsFetched value) locationsFetched,
    required TResult Function(_LocationUpdated value) locationUpdated,
    required TResult Function(_LocationDeleted value) locationDeleted,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_LocationFetched value) locationFetched,
    required TResult Function(_BookDatesSaved value) bookDatesSaved,
    required TResult Function(_LocationBooked value) locationBooked,
  }) {
    return locationUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationCreated value)? locationCreated,
    TResult? Function(_LocationsFetched value)? locationsFetched,
    TResult? Function(_LocationUpdated value)? locationUpdated,
    TResult? Function(_LocationDeleted value)? locationDeleted,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_LocationFetched value)? locationFetched,
    TResult? Function(_BookDatesSaved value)? bookDatesSaved,
    TResult? Function(_LocationBooked value)? locationBooked,
  }) {
    return locationUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationCreated value)? locationCreated,
    TResult Function(_LocationsFetched value)? locationsFetched,
    TResult Function(_LocationUpdated value)? locationUpdated,
    TResult Function(_LocationDeleted value)? locationDeleted,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_LocationFetched value)? locationFetched,
    TResult Function(_BookDatesSaved value)? bookDatesSaved,
    TResult Function(_LocationBooked value)? locationBooked,
    required TResult orElse(),
  }) {
    if (locationUpdated != null) {
      return locationUpdated(this);
    }
    return orElse();
  }
}

abstract class _LocationUpdated implements LocationsEvent {
  const factory _LocationUpdated(
      {required final Location location,
      required final List<File> images}) = _$_LocationUpdated;

  Location get location;
  List<File> get images;
  @JsonKey(ignore: true)
  _$$_LocationUpdatedCopyWith<_$_LocationUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocationDeletedCopyWith<$Res> {
  factory _$$_LocationDeletedCopyWith(
          _$_LocationDeleted value, $Res Function(_$_LocationDeleted) then) =
      __$$_LocationDeletedCopyWithImpl<$Res>;
  @useResult
  $Res call({String locationId});
}

/// @nodoc
class __$$_LocationDeletedCopyWithImpl<$Res>
    extends _$LocationsEventCopyWithImpl<$Res, _$_LocationDeleted>
    implements _$$_LocationDeletedCopyWith<$Res> {
  __$$_LocationDeletedCopyWithImpl(
      _$_LocationDeleted _value, $Res Function(_$_LocationDeleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationId = null,
  }) {
    return _then(_$_LocationDeleted(
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LocationDeleted implements _LocationDeleted {
  const _$_LocationDeleted({required this.locationId});

  @override
  final String locationId;

  @override
  String toString() {
    return 'LocationsEvent.locationDeleted(locationId: $locationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationDeleted &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationDeletedCopyWith<_$_LocationDeleted> get copyWith =>
      __$$_LocationDeletedCopyWithImpl<_$_LocationDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Location location, List<File> images)
        locationCreated,
    required TResult Function(String? email) locationsFetched,
    required TResult Function(Location location, List<File> images)
        locationUpdated,
    required TResult Function(String locationId) locationDeleted,
    required TResult Function(String locationId, String imageUrl) imageDeleted,
    required TResult Function(String locationId) locationFetched,
    required TResult Function(List<DateTime> bookedDates) bookDatesSaved,
    required TResult Function(
            int amount, String cardNumber, String cvv, String expiryDate)
        locationBooked,
  }) {
    return locationDeleted(locationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Location location, List<File> images)? locationCreated,
    TResult? Function(String? email)? locationsFetched,
    TResult? Function(Location location, List<File> images)? locationUpdated,
    TResult? Function(String locationId)? locationDeleted,
    TResult? Function(String locationId, String imageUrl)? imageDeleted,
    TResult? Function(String locationId)? locationFetched,
    TResult? Function(List<DateTime> bookedDates)? bookDatesSaved,
    TResult? Function(
            int amount, String cardNumber, String cvv, String expiryDate)?
        locationBooked,
  }) {
    return locationDeleted?.call(locationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Location location, List<File> images)? locationCreated,
    TResult Function(String? email)? locationsFetched,
    TResult Function(Location location, List<File> images)? locationUpdated,
    TResult Function(String locationId)? locationDeleted,
    TResult Function(String locationId, String imageUrl)? imageDeleted,
    TResult Function(String locationId)? locationFetched,
    TResult Function(List<DateTime> bookedDates)? bookDatesSaved,
    TResult Function(
            int amount, String cardNumber, String cvv, String expiryDate)?
        locationBooked,
    required TResult orElse(),
  }) {
    if (locationDeleted != null) {
      return locationDeleted(locationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationCreated value) locationCreated,
    required TResult Function(_LocationsFetched value) locationsFetched,
    required TResult Function(_LocationUpdated value) locationUpdated,
    required TResult Function(_LocationDeleted value) locationDeleted,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_LocationFetched value) locationFetched,
    required TResult Function(_BookDatesSaved value) bookDatesSaved,
    required TResult Function(_LocationBooked value) locationBooked,
  }) {
    return locationDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationCreated value)? locationCreated,
    TResult? Function(_LocationsFetched value)? locationsFetched,
    TResult? Function(_LocationUpdated value)? locationUpdated,
    TResult? Function(_LocationDeleted value)? locationDeleted,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_LocationFetched value)? locationFetched,
    TResult? Function(_BookDatesSaved value)? bookDatesSaved,
    TResult? Function(_LocationBooked value)? locationBooked,
  }) {
    return locationDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationCreated value)? locationCreated,
    TResult Function(_LocationsFetched value)? locationsFetched,
    TResult Function(_LocationUpdated value)? locationUpdated,
    TResult Function(_LocationDeleted value)? locationDeleted,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_LocationFetched value)? locationFetched,
    TResult Function(_BookDatesSaved value)? bookDatesSaved,
    TResult Function(_LocationBooked value)? locationBooked,
    required TResult orElse(),
  }) {
    if (locationDeleted != null) {
      return locationDeleted(this);
    }
    return orElse();
  }
}

abstract class _LocationDeleted implements LocationsEvent {
  const factory _LocationDeleted({required final String locationId}) =
      _$_LocationDeleted;

  String get locationId;
  @JsonKey(ignore: true)
  _$$_LocationDeletedCopyWith<_$_LocationDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImageDeletedCopyWith<$Res> {
  factory _$$_ImageDeletedCopyWith(
          _$_ImageDeleted value, $Res Function(_$_ImageDeleted) then) =
      __$$_ImageDeletedCopyWithImpl<$Res>;
  @useResult
  $Res call({String locationId, String imageUrl});
}

/// @nodoc
class __$$_ImageDeletedCopyWithImpl<$Res>
    extends _$LocationsEventCopyWithImpl<$Res, _$_ImageDeleted>
    implements _$$_ImageDeletedCopyWith<$Res> {
  __$$_ImageDeletedCopyWithImpl(
      _$_ImageDeleted _value, $Res Function(_$_ImageDeleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationId = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_ImageDeleted(
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImageDeleted implements _ImageDeleted {
  const _$_ImageDeleted({required this.locationId, required this.imageUrl});

  @override
  final String locationId;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'LocationsEvent.imageDeleted(locationId: $locationId, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageDeleted &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationId, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageDeletedCopyWith<_$_ImageDeleted> get copyWith =>
      __$$_ImageDeletedCopyWithImpl<_$_ImageDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Location location, List<File> images)
        locationCreated,
    required TResult Function(String? email) locationsFetched,
    required TResult Function(Location location, List<File> images)
        locationUpdated,
    required TResult Function(String locationId) locationDeleted,
    required TResult Function(String locationId, String imageUrl) imageDeleted,
    required TResult Function(String locationId) locationFetched,
    required TResult Function(List<DateTime> bookedDates) bookDatesSaved,
    required TResult Function(
            int amount, String cardNumber, String cvv, String expiryDate)
        locationBooked,
  }) {
    return imageDeleted(locationId, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Location location, List<File> images)? locationCreated,
    TResult? Function(String? email)? locationsFetched,
    TResult? Function(Location location, List<File> images)? locationUpdated,
    TResult? Function(String locationId)? locationDeleted,
    TResult? Function(String locationId, String imageUrl)? imageDeleted,
    TResult? Function(String locationId)? locationFetched,
    TResult? Function(List<DateTime> bookedDates)? bookDatesSaved,
    TResult? Function(
            int amount, String cardNumber, String cvv, String expiryDate)?
        locationBooked,
  }) {
    return imageDeleted?.call(locationId, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Location location, List<File> images)? locationCreated,
    TResult Function(String? email)? locationsFetched,
    TResult Function(Location location, List<File> images)? locationUpdated,
    TResult Function(String locationId)? locationDeleted,
    TResult Function(String locationId, String imageUrl)? imageDeleted,
    TResult Function(String locationId)? locationFetched,
    TResult Function(List<DateTime> bookedDates)? bookDatesSaved,
    TResult Function(
            int amount, String cardNumber, String cvv, String expiryDate)?
        locationBooked,
    required TResult orElse(),
  }) {
    if (imageDeleted != null) {
      return imageDeleted(locationId, imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationCreated value) locationCreated,
    required TResult Function(_LocationsFetched value) locationsFetched,
    required TResult Function(_LocationUpdated value) locationUpdated,
    required TResult Function(_LocationDeleted value) locationDeleted,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_LocationFetched value) locationFetched,
    required TResult Function(_BookDatesSaved value) bookDatesSaved,
    required TResult Function(_LocationBooked value) locationBooked,
  }) {
    return imageDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationCreated value)? locationCreated,
    TResult? Function(_LocationsFetched value)? locationsFetched,
    TResult? Function(_LocationUpdated value)? locationUpdated,
    TResult? Function(_LocationDeleted value)? locationDeleted,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_LocationFetched value)? locationFetched,
    TResult? Function(_BookDatesSaved value)? bookDatesSaved,
    TResult? Function(_LocationBooked value)? locationBooked,
  }) {
    return imageDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationCreated value)? locationCreated,
    TResult Function(_LocationsFetched value)? locationsFetched,
    TResult Function(_LocationUpdated value)? locationUpdated,
    TResult Function(_LocationDeleted value)? locationDeleted,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_LocationFetched value)? locationFetched,
    TResult Function(_BookDatesSaved value)? bookDatesSaved,
    TResult Function(_LocationBooked value)? locationBooked,
    required TResult orElse(),
  }) {
    if (imageDeleted != null) {
      return imageDeleted(this);
    }
    return orElse();
  }
}

abstract class _ImageDeleted implements LocationsEvent {
  const factory _ImageDeleted(
      {required final String locationId,
      required final String imageUrl}) = _$_ImageDeleted;

  String get locationId;
  String get imageUrl;
  @JsonKey(ignore: true)
  _$$_ImageDeletedCopyWith<_$_ImageDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocationFetchedCopyWith<$Res> {
  factory _$$_LocationFetchedCopyWith(
          _$_LocationFetched value, $Res Function(_$_LocationFetched) then) =
      __$$_LocationFetchedCopyWithImpl<$Res>;
  @useResult
  $Res call({String locationId});
}

/// @nodoc
class __$$_LocationFetchedCopyWithImpl<$Res>
    extends _$LocationsEventCopyWithImpl<$Res, _$_LocationFetched>
    implements _$$_LocationFetchedCopyWith<$Res> {
  __$$_LocationFetchedCopyWithImpl(
      _$_LocationFetched _value, $Res Function(_$_LocationFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationId = null,
  }) {
    return _then(_$_LocationFetched(
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LocationFetched implements _LocationFetched {
  const _$_LocationFetched({required this.locationId});

  @override
  final String locationId;

  @override
  String toString() {
    return 'LocationsEvent.locationFetched(locationId: $locationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationFetched &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationFetchedCopyWith<_$_LocationFetched> get copyWith =>
      __$$_LocationFetchedCopyWithImpl<_$_LocationFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Location location, List<File> images)
        locationCreated,
    required TResult Function(String? email) locationsFetched,
    required TResult Function(Location location, List<File> images)
        locationUpdated,
    required TResult Function(String locationId) locationDeleted,
    required TResult Function(String locationId, String imageUrl) imageDeleted,
    required TResult Function(String locationId) locationFetched,
    required TResult Function(List<DateTime> bookedDates) bookDatesSaved,
    required TResult Function(
            int amount, String cardNumber, String cvv, String expiryDate)
        locationBooked,
  }) {
    return locationFetched(locationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Location location, List<File> images)? locationCreated,
    TResult? Function(String? email)? locationsFetched,
    TResult? Function(Location location, List<File> images)? locationUpdated,
    TResult? Function(String locationId)? locationDeleted,
    TResult? Function(String locationId, String imageUrl)? imageDeleted,
    TResult? Function(String locationId)? locationFetched,
    TResult? Function(List<DateTime> bookedDates)? bookDatesSaved,
    TResult? Function(
            int amount, String cardNumber, String cvv, String expiryDate)?
        locationBooked,
  }) {
    return locationFetched?.call(locationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Location location, List<File> images)? locationCreated,
    TResult Function(String? email)? locationsFetched,
    TResult Function(Location location, List<File> images)? locationUpdated,
    TResult Function(String locationId)? locationDeleted,
    TResult Function(String locationId, String imageUrl)? imageDeleted,
    TResult Function(String locationId)? locationFetched,
    TResult Function(List<DateTime> bookedDates)? bookDatesSaved,
    TResult Function(
            int amount, String cardNumber, String cvv, String expiryDate)?
        locationBooked,
    required TResult orElse(),
  }) {
    if (locationFetched != null) {
      return locationFetched(locationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationCreated value) locationCreated,
    required TResult Function(_LocationsFetched value) locationsFetched,
    required TResult Function(_LocationUpdated value) locationUpdated,
    required TResult Function(_LocationDeleted value) locationDeleted,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_LocationFetched value) locationFetched,
    required TResult Function(_BookDatesSaved value) bookDatesSaved,
    required TResult Function(_LocationBooked value) locationBooked,
  }) {
    return locationFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationCreated value)? locationCreated,
    TResult? Function(_LocationsFetched value)? locationsFetched,
    TResult? Function(_LocationUpdated value)? locationUpdated,
    TResult? Function(_LocationDeleted value)? locationDeleted,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_LocationFetched value)? locationFetched,
    TResult? Function(_BookDatesSaved value)? bookDatesSaved,
    TResult? Function(_LocationBooked value)? locationBooked,
  }) {
    return locationFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationCreated value)? locationCreated,
    TResult Function(_LocationsFetched value)? locationsFetched,
    TResult Function(_LocationUpdated value)? locationUpdated,
    TResult Function(_LocationDeleted value)? locationDeleted,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_LocationFetched value)? locationFetched,
    TResult Function(_BookDatesSaved value)? bookDatesSaved,
    TResult Function(_LocationBooked value)? locationBooked,
    required TResult orElse(),
  }) {
    if (locationFetched != null) {
      return locationFetched(this);
    }
    return orElse();
  }
}

abstract class _LocationFetched implements LocationsEvent {
  const factory _LocationFetched({required final String locationId}) =
      _$_LocationFetched;

  String get locationId;
  @JsonKey(ignore: true)
  _$$_LocationFetchedCopyWith<_$_LocationFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BookDatesSavedCopyWith<$Res> {
  factory _$$_BookDatesSavedCopyWith(
          _$_BookDatesSaved value, $Res Function(_$_BookDatesSaved) then) =
      __$$_BookDatesSavedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DateTime> bookedDates});
}

/// @nodoc
class __$$_BookDatesSavedCopyWithImpl<$Res>
    extends _$LocationsEventCopyWithImpl<$Res, _$_BookDatesSaved>
    implements _$$_BookDatesSavedCopyWith<$Res> {
  __$$_BookDatesSavedCopyWithImpl(
      _$_BookDatesSaved _value, $Res Function(_$_BookDatesSaved) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookedDates = null,
  }) {
    return _then(_$_BookDatesSaved(
      bookedDates: null == bookedDates
          ? _value._bookedDates
          : bookedDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc

class _$_BookDatesSaved implements _BookDatesSaved {
  const _$_BookDatesSaved({required final List<DateTime> bookedDates})
      : _bookedDates = bookedDates;

  final List<DateTime> _bookedDates;
  @override
  List<DateTime> get bookedDates {
    if (_bookedDates is EqualUnmodifiableListView) return _bookedDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookedDates);
  }

  @override
  String toString() {
    return 'LocationsEvent.bookDatesSaved(bookedDates: $bookedDates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookDatesSaved &&
            const DeepCollectionEquality()
                .equals(other._bookedDates, _bookedDates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_bookedDates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookDatesSavedCopyWith<_$_BookDatesSaved> get copyWith =>
      __$$_BookDatesSavedCopyWithImpl<_$_BookDatesSaved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Location location, List<File> images)
        locationCreated,
    required TResult Function(String? email) locationsFetched,
    required TResult Function(Location location, List<File> images)
        locationUpdated,
    required TResult Function(String locationId) locationDeleted,
    required TResult Function(String locationId, String imageUrl) imageDeleted,
    required TResult Function(String locationId) locationFetched,
    required TResult Function(List<DateTime> bookedDates) bookDatesSaved,
    required TResult Function(
            int amount, String cardNumber, String cvv, String expiryDate)
        locationBooked,
  }) {
    return bookDatesSaved(bookedDates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Location location, List<File> images)? locationCreated,
    TResult? Function(String? email)? locationsFetched,
    TResult? Function(Location location, List<File> images)? locationUpdated,
    TResult? Function(String locationId)? locationDeleted,
    TResult? Function(String locationId, String imageUrl)? imageDeleted,
    TResult? Function(String locationId)? locationFetched,
    TResult? Function(List<DateTime> bookedDates)? bookDatesSaved,
    TResult? Function(
            int amount, String cardNumber, String cvv, String expiryDate)?
        locationBooked,
  }) {
    return bookDatesSaved?.call(bookedDates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Location location, List<File> images)? locationCreated,
    TResult Function(String? email)? locationsFetched,
    TResult Function(Location location, List<File> images)? locationUpdated,
    TResult Function(String locationId)? locationDeleted,
    TResult Function(String locationId, String imageUrl)? imageDeleted,
    TResult Function(String locationId)? locationFetched,
    TResult Function(List<DateTime> bookedDates)? bookDatesSaved,
    TResult Function(
            int amount, String cardNumber, String cvv, String expiryDate)?
        locationBooked,
    required TResult orElse(),
  }) {
    if (bookDatesSaved != null) {
      return bookDatesSaved(bookedDates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationCreated value) locationCreated,
    required TResult Function(_LocationsFetched value) locationsFetched,
    required TResult Function(_LocationUpdated value) locationUpdated,
    required TResult Function(_LocationDeleted value) locationDeleted,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_LocationFetched value) locationFetched,
    required TResult Function(_BookDatesSaved value) bookDatesSaved,
    required TResult Function(_LocationBooked value) locationBooked,
  }) {
    return bookDatesSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationCreated value)? locationCreated,
    TResult? Function(_LocationsFetched value)? locationsFetched,
    TResult? Function(_LocationUpdated value)? locationUpdated,
    TResult? Function(_LocationDeleted value)? locationDeleted,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_LocationFetched value)? locationFetched,
    TResult? Function(_BookDatesSaved value)? bookDatesSaved,
    TResult? Function(_LocationBooked value)? locationBooked,
  }) {
    return bookDatesSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationCreated value)? locationCreated,
    TResult Function(_LocationsFetched value)? locationsFetched,
    TResult Function(_LocationUpdated value)? locationUpdated,
    TResult Function(_LocationDeleted value)? locationDeleted,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_LocationFetched value)? locationFetched,
    TResult Function(_BookDatesSaved value)? bookDatesSaved,
    TResult Function(_LocationBooked value)? locationBooked,
    required TResult orElse(),
  }) {
    if (bookDatesSaved != null) {
      return bookDatesSaved(this);
    }
    return orElse();
  }
}

abstract class _BookDatesSaved implements LocationsEvent {
  const factory _BookDatesSaved({required final List<DateTime> bookedDates}) =
      _$_BookDatesSaved;

  List<DateTime> get bookedDates;
  @JsonKey(ignore: true)
  _$$_BookDatesSavedCopyWith<_$_BookDatesSaved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocationBookedCopyWith<$Res> {
  factory _$$_LocationBookedCopyWith(
          _$_LocationBooked value, $Res Function(_$_LocationBooked) then) =
      __$$_LocationBookedCopyWithImpl<$Res>;
  @useResult
  $Res call({int amount, String cardNumber, String cvv, String expiryDate});
}

/// @nodoc
class __$$_LocationBookedCopyWithImpl<$Res>
    extends _$LocationsEventCopyWithImpl<$Res, _$_LocationBooked>
    implements _$$_LocationBookedCopyWith<$Res> {
  __$$_LocationBookedCopyWithImpl(
      _$_LocationBooked _value, $Res Function(_$_LocationBooked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? cardNumber = null,
    Object? cvv = null,
    Object? expiryDate = null,
  }) {
    return _then(_$_LocationBooked(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LocationBooked implements _LocationBooked {
  const _$_LocationBooked(
      {required this.amount,
      required this.cardNumber,
      required this.cvv,
      required this.expiryDate});

  @override
  final int amount;
  @override
  final String cardNumber;
  @override
  final String cvv;
  @override
  final String expiryDate;

  @override
  String toString() {
    return 'LocationsEvent.locationBooked(amount: $amount, cardNumber: $cardNumber, cvv: $cvv, expiryDate: $expiryDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationBooked &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cvv, cvv) || other.cvv == cvv) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, cardNumber, cvv, expiryDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationBookedCopyWith<_$_LocationBooked> get copyWith =>
      __$$_LocationBookedCopyWithImpl<_$_LocationBooked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Location location, List<File> images)
        locationCreated,
    required TResult Function(String? email) locationsFetched,
    required TResult Function(Location location, List<File> images)
        locationUpdated,
    required TResult Function(String locationId) locationDeleted,
    required TResult Function(String locationId, String imageUrl) imageDeleted,
    required TResult Function(String locationId) locationFetched,
    required TResult Function(List<DateTime> bookedDates) bookDatesSaved,
    required TResult Function(
            int amount, String cardNumber, String cvv, String expiryDate)
        locationBooked,
  }) {
    return locationBooked(amount, cardNumber, cvv, expiryDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Location location, List<File> images)? locationCreated,
    TResult? Function(String? email)? locationsFetched,
    TResult? Function(Location location, List<File> images)? locationUpdated,
    TResult? Function(String locationId)? locationDeleted,
    TResult? Function(String locationId, String imageUrl)? imageDeleted,
    TResult? Function(String locationId)? locationFetched,
    TResult? Function(List<DateTime> bookedDates)? bookDatesSaved,
    TResult? Function(
            int amount, String cardNumber, String cvv, String expiryDate)?
        locationBooked,
  }) {
    return locationBooked?.call(amount, cardNumber, cvv, expiryDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Location location, List<File> images)? locationCreated,
    TResult Function(String? email)? locationsFetched,
    TResult Function(Location location, List<File> images)? locationUpdated,
    TResult Function(String locationId)? locationDeleted,
    TResult Function(String locationId, String imageUrl)? imageDeleted,
    TResult Function(String locationId)? locationFetched,
    TResult Function(List<DateTime> bookedDates)? bookDatesSaved,
    TResult Function(
            int amount, String cardNumber, String cvv, String expiryDate)?
        locationBooked,
    required TResult orElse(),
  }) {
    if (locationBooked != null) {
      return locationBooked(amount, cardNumber, cvv, expiryDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationCreated value) locationCreated,
    required TResult Function(_LocationsFetched value) locationsFetched,
    required TResult Function(_LocationUpdated value) locationUpdated,
    required TResult Function(_LocationDeleted value) locationDeleted,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_LocationFetched value) locationFetched,
    required TResult Function(_BookDatesSaved value) bookDatesSaved,
    required TResult Function(_LocationBooked value) locationBooked,
  }) {
    return locationBooked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationCreated value)? locationCreated,
    TResult? Function(_LocationsFetched value)? locationsFetched,
    TResult? Function(_LocationUpdated value)? locationUpdated,
    TResult? Function(_LocationDeleted value)? locationDeleted,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_LocationFetched value)? locationFetched,
    TResult? Function(_BookDatesSaved value)? bookDatesSaved,
    TResult? Function(_LocationBooked value)? locationBooked,
  }) {
    return locationBooked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationCreated value)? locationCreated,
    TResult Function(_LocationsFetched value)? locationsFetched,
    TResult Function(_LocationUpdated value)? locationUpdated,
    TResult Function(_LocationDeleted value)? locationDeleted,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_LocationFetched value)? locationFetched,
    TResult Function(_BookDatesSaved value)? bookDatesSaved,
    TResult Function(_LocationBooked value)? locationBooked,
    required TResult orElse(),
  }) {
    if (locationBooked != null) {
      return locationBooked(this);
    }
    return orElse();
  }
}

abstract class _LocationBooked implements LocationsEvent {
  const factory _LocationBooked(
      {required final int amount,
      required final String cardNumber,
      required final String cvv,
      required final String expiryDate}) = _$_LocationBooked;

  int get amount;
  String get cardNumber;
  String get cvv;
  String get expiryDate;
  @JsonKey(ignore: true)
  _$$_LocationBookedCopyWith<_$_LocationBooked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationsState {
  LocationsStatus get status => throw _privateConstructorUsedError;
  List<Location> get locations => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  List<DateTime> get bookedDates => throw _privateConstructorUsedError;

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
  $Res call(
      {LocationsStatus status,
      List<Location> locations,
      Location? location,
      List<DateTime> bookedDates});

  $LocationCopyWith<$Res>? get location;
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
    Object? location = freezed,
    Object? bookedDates = null,
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
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      bookedDates: null == bookedDates
          ? _value.bookedDates
          : bookedDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
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
  $Res call(
      {LocationsStatus status,
      List<Location> locations,
      Location? location,
      List<DateTime> bookedDates});

  @override
  $LocationCopyWith<$Res>? get location;
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
    Object? location = freezed,
    Object? bookedDates = null,
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
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      bookedDates: null == bookedDates
          ? _value._bookedDates
          : bookedDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc

class _$_LocationsState implements _LocationsState {
  const _$_LocationsState(
      {this.status = LocationsStatus.initial,
      final List<Location> locations = const [],
      this.location,
      final List<DateTime> bookedDates = const []})
      : _locations = locations,
        _bookedDates = bookedDates;

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
  final Location? location;
  final List<DateTime> _bookedDates;
  @override
  @JsonKey()
  List<DateTime> get bookedDates {
    if (_bookedDates is EqualUnmodifiableListView) return _bookedDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookedDates);
  }

  @override
  String toString() {
    return 'LocationsState(status: $status, locations: $locations, location: $location, bookedDates: $bookedDates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationsState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._bookedDates, _bookedDates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_locations),
      location,
      const DeepCollectionEquality().hash(_bookedDates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationsStateCopyWith<_$_LocationsState> get copyWith =>
      __$$_LocationsStateCopyWithImpl<_$_LocationsState>(this, _$identity);
}

abstract class _LocationsState implements LocationsState {
  const factory _LocationsState(
      {final LocationsStatus status,
      final List<Location> locations,
      final Location? location,
      final List<DateTime> bookedDates}) = _$_LocationsState;

  @override
  LocationsStatus get status;
  @override
  List<Location> get locations;
  @override
  Location? get location;
  @override
  List<DateTime> get bookedDates;
  @override
  @JsonKey(ignore: true)
  _$$_LocationsStateCopyWith<_$_LocationsState> get copyWith =>
      throw _privateConstructorUsedError;
}
