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
mixin _$LocationsState {
  LocationsStatus get status => throw _privateConstructorUsedError;
  List<Location> get locations => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;

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
      {LocationsStatus status, List<Location> locations, Location? location});

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
      {LocationsStatus status, List<Location> locations, Location? location});

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
    ));
  }
}

/// @nodoc

class _$_LocationsState implements _LocationsState {
  const _$_LocationsState(
      {this.status = LocationsStatus.initial,
      final List<Location> locations = const [],
      this.location})
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
  final Location? location;

  @override
  String toString() {
    return 'LocationsState(status: $status, locations: $locations, location: $location)';
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
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_locations), location);

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
      final Location? location}) = _$_LocationsState;

  @override
  LocationsStatus get status;
  @override
  List<Location> get locations;
  @override
  Location? get location;
  @override
  @JsonKey(ignore: true)
  _$$_LocationsStateCopyWith<_$_LocationsState> get copyWith =>
      throw _privateConstructorUsedError;
}
