// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String latitude) setLatitude,
    required TResult Function(String longitude) setLongitude,
    required TResult Function(String zoom) setZoom,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String latitude)? setLatitude,
    TResult? Function(String longitude)? setLongitude,
    TResult? Function(String zoom)? setZoom,
    TResult? Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String latitude)? setLatitude,
    TResult Function(String longitude)? setLongitude,
    TResult Function(String zoom)? setZoom,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLatitudeEvent value) setLatitude,
    required TResult Function(_SetLongitudeEvent value) setLongitude,
    required TResult Function(_SetZoomEvent value) setZoom,
    required TResult Function(_SubmitEvent value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLatitudeEvent value)? setLatitude,
    TResult? Function(_SetLongitudeEvent value)? setLongitude,
    TResult? Function(_SetZoomEvent value)? setZoom,
    TResult? Function(_SubmitEvent value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLatitudeEvent value)? setLatitude,
    TResult Function(_SetLongitudeEvent value)? setLongitude,
    TResult Function(_SetZoomEvent value)? setZoom,
    TResult Function(_SubmitEvent value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TileEventCopyWith<$Res> {
  factory $TileEventCopyWith(TileEvent value, $Res Function(TileEvent) then) =
      _$TileEventCopyWithImpl<$Res, TileEvent>;
}

/// @nodoc
class _$TileEventCopyWithImpl<$Res, $Val extends TileEvent>
    implements $TileEventCopyWith<$Res> {
  _$TileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SetLatitudeEventCopyWith<$Res> {
  factory _$$_SetLatitudeEventCopyWith(
          _$_SetLatitudeEvent value, $Res Function(_$_SetLatitudeEvent) then) =
      __$$_SetLatitudeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String latitude});
}

/// @nodoc
class __$$_SetLatitudeEventCopyWithImpl<$Res>
    extends _$TileEventCopyWithImpl<$Res, _$_SetLatitudeEvent>
    implements _$$_SetLatitudeEventCopyWith<$Res> {
  __$$_SetLatitudeEventCopyWithImpl(
      _$_SetLatitudeEvent _value, $Res Function(_$_SetLatitudeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
  }) {
    return _then(_$_SetLatitudeEvent(
      null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetLatitudeEvent implements _SetLatitudeEvent {
  const _$_SetLatitudeEvent(this.latitude);

  @override
  final String latitude;

  @override
  String toString() {
    return 'TileEvent.setLatitude(latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetLatitudeEvent &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetLatitudeEventCopyWith<_$_SetLatitudeEvent> get copyWith =>
      __$$_SetLatitudeEventCopyWithImpl<_$_SetLatitudeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String latitude) setLatitude,
    required TResult Function(String longitude) setLongitude,
    required TResult Function(String zoom) setZoom,
    required TResult Function() submit,
  }) {
    return setLatitude(latitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String latitude)? setLatitude,
    TResult? Function(String longitude)? setLongitude,
    TResult? Function(String zoom)? setZoom,
    TResult? Function()? submit,
  }) {
    return setLatitude?.call(latitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String latitude)? setLatitude,
    TResult Function(String longitude)? setLongitude,
    TResult Function(String zoom)? setZoom,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (setLatitude != null) {
      return setLatitude(latitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLatitudeEvent value) setLatitude,
    required TResult Function(_SetLongitudeEvent value) setLongitude,
    required TResult Function(_SetZoomEvent value) setZoom,
    required TResult Function(_SubmitEvent value) submit,
  }) {
    return setLatitude(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLatitudeEvent value)? setLatitude,
    TResult? Function(_SetLongitudeEvent value)? setLongitude,
    TResult? Function(_SetZoomEvent value)? setZoom,
    TResult? Function(_SubmitEvent value)? submit,
  }) {
    return setLatitude?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLatitudeEvent value)? setLatitude,
    TResult Function(_SetLongitudeEvent value)? setLongitude,
    TResult Function(_SetZoomEvent value)? setZoom,
    TResult Function(_SubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (setLatitude != null) {
      return setLatitude(this);
    }
    return orElse();
  }
}

abstract class _SetLatitudeEvent implements TileEvent {
  const factory _SetLatitudeEvent(final String latitude) = _$_SetLatitudeEvent;

  String get latitude;
  @JsonKey(ignore: true)
  _$$_SetLatitudeEventCopyWith<_$_SetLatitudeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetLongitudeEventCopyWith<$Res> {
  factory _$$_SetLongitudeEventCopyWith(_$_SetLongitudeEvent value,
          $Res Function(_$_SetLongitudeEvent) then) =
      __$$_SetLongitudeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String longitude});
}

/// @nodoc
class __$$_SetLongitudeEventCopyWithImpl<$Res>
    extends _$TileEventCopyWithImpl<$Res, _$_SetLongitudeEvent>
    implements _$$_SetLongitudeEventCopyWith<$Res> {
  __$$_SetLongitudeEventCopyWithImpl(
      _$_SetLongitudeEvent _value, $Res Function(_$_SetLongitudeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = null,
  }) {
    return _then(_$_SetLongitudeEvent(
      null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetLongitudeEvent implements _SetLongitudeEvent {
  const _$_SetLongitudeEvent(this.longitude);

  @override
  final String longitude;

  @override
  String toString() {
    return 'TileEvent.setLongitude(longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetLongitudeEvent &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetLongitudeEventCopyWith<_$_SetLongitudeEvent> get copyWith =>
      __$$_SetLongitudeEventCopyWithImpl<_$_SetLongitudeEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String latitude) setLatitude,
    required TResult Function(String longitude) setLongitude,
    required TResult Function(String zoom) setZoom,
    required TResult Function() submit,
  }) {
    return setLongitude(longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String latitude)? setLatitude,
    TResult? Function(String longitude)? setLongitude,
    TResult? Function(String zoom)? setZoom,
    TResult? Function()? submit,
  }) {
    return setLongitude?.call(longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String latitude)? setLatitude,
    TResult Function(String longitude)? setLongitude,
    TResult Function(String zoom)? setZoom,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (setLongitude != null) {
      return setLongitude(longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLatitudeEvent value) setLatitude,
    required TResult Function(_SetLongitudeEvent value) setLongitude,
    required TResult Function(_SetZoomEvent value) setZoom,
    required TResult Function(_SubmitEvent value) submit,
  }) {
    return setLongitude(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLatitudeEvent value)? setLatitude,
    TResult? Function(_SetLongitudeEvent value)? setLongitude,
    TResult? Function(_SetZoomEvent value)? setZoom,
    TResult? Function(_SubmitEvent value)? submit,
  }) {
    return setLongitude?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLatitudeEvent value)? setLatitude,
    TResult Function(_SetLongitudeEvent value)? setLongitude,
    TResult Function(_SetZoomEvent value)? setZoom,
    TResult Function(_SubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (setLongitude != null) {
      return setLongitude(this);
    }
    return orElse();
  }
}

abstract class _SetLongitudeEvent implements TileEvent {
  const factory _SetLongitudeEvent(final String longitude) =
      _$_SetLongitudeEvent;

  String get longitude;
  @JsonKey(ignore: true)
  _$$_SetLongitudeEventCopyWith<_$_SetLongitudeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetZoomEventCopyWith<$Res> {
  factory _$$_SetZoomEventCopyWith(
          _$_SetZoomEvent value, $Res Function(_$_SetZoomEvent) then) =
      __$$_SetZoomEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String zoom});
}

/// @nodoc
class __$$_SetZoomEventCopyWithImpl<$Res>
    extends _$TileEventCopyWithImpl<$Res, _$_SetZoomEvent>
    implements _$$_SetZoomEventCopyWith<$Res> {
  __$$_SetZoomEventCopyWithImpl(
      _$_SetZoomEvent _value, $Res Function(_$_SetZoomEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zoom = null,
  }) {
    return _then(_$_SetZoomEvent(
      null == zoom
          ? _value.zoom
          : zoom // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetZoomEvent implements _SetZoomEvent {
  const _$_SetZoomEvent(this.zoom);

  @override
  final String zoom;

  @override
  String toString() {
    return 'TileEvent.setZoom(zoom: $zoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetZoomEvent &&
            (identical(other.zoom, zoom) || other.zoom == zoom));
  }

  @override
  int get hashCode => Object.hash(runtimeType, zoom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetZoomEventCopyWith<_$_SetZoomEvent> get copyWith =>
      __$$_SetZoomEventCopyWithImpl<_$_SetZoomEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String latitude) setLatitude,
    required TResult Function(String longitude) setLongitude,
    required TResult Function(String zoom) setZoom,
    required TResult Function() submit,
  }) {
    return setZoom(zoom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String latitude)? setLatitude,
    TResult? Function(String longitude)? setLongitude,
    TResult? Function(String zoom)? setZoom,
    TResult? Function()? submit,
  }) {
    return setZoom?.call(zoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String latitude)? setLatitude,
    TResult Function(String longitude)? setLongitude,
    TResult Function(String zoom)? setZoom,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (setZoom != null) {
      return setZoom(zoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLatitudeEvent value) setLatitude,
    required TResult Function(_SetLongitudeEvent value) setLongitude,
    required TResult Function(_SetZoomEvent value) setZoom,
    required TResult Function(_SubmitEvent value) submit,
  }) {
    return setZoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLatitudeEvent value)? setLatitude,
    TResult? Function(_SetLongitudeEvent value)? setLongitude,
    TResult? Function(_SetZoomEvent value)? setZoom,
    TResult? Function(_SubmitEvent value)? submit,
  }) {
    return setZoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLatitudeEvent value)? setLatitude,
    TResult Function(_SetLongitudeEvent value)? setLongitude,
    TResult Function(_SetZoomEvent value)? setZoom,
    TResult Function(_SubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (setZoom != null) {
      return setZoom(this);
    }
    return orElse();
  }
}

abstract class _SetZoomEvent implements TileEvent {
  const factory _SetZoomEvent(final String zoom) = _$_SetZoomEvent;

  String get zoom;
  @JsonKey(ignore: true)
  _$$_SetZoomEventCopyWith<_$_SetZoomEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitEventCopyWith<$Res> {
  factory _$$_SubmitEventCopyWith(
          _$_SubmitEvent value, $Res Function(_$_SubmitEvent) then) =
      __$$_SubmitEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmitEventCopyWithImpl<$Res>
    extends _$TileEventCopyWithImpl<$Res, _$_SubmitEvent>
    implements _$$_SubmitEventCopyWith<$Res> {
  __$$_SubmitEventCopyWithImpl(
      _$_SubmitEvent _value, $Res Function(_$_SubmitEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SubmitEvent implements _SubmitEvent {
  const _$_SubmitEvent();

  @override
  String toString() {
    return 'TileEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SubmitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String latitude) setLatitude,
    required TResult Function(String longitude) setLongitude,
    required TResult Function(String zoom) setZoom,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String latitude)? setLatitude,
    TResult? Function(String longitude)? setLongitude,
    TResult? Function(String zoom)? setZoom,
    TResult? Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String latitude)? setLatitude,
    TResult Function(String longitude)? setLongitude,
    TResult Function(String zoom)? setZoom,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLatitudeEvent value) setLatitude,
    required TResult Function(_SetLongitudeEvent value) setLongitude,
    required TResult Function(_SetZoomEvent value) setZoom,
    required TResult Function(_SubmitEvent value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLatitudeEvent value)? setLatitude,
    TResult? Function(_SetLongitudeEvent value)? setLongitude,
    TResult? Function(_SetZoomEvent value)? setZoom,
    TResult? Function(_SubmitEvent value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLatitudeEvent value)? setLatitude,
    TResult Function(_SetLongitudeEvent value)? setLongitude,
    TResult Function(_SetZoomEvent value)? setZoom,
    TResult Function(_SubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _SubmitEvent implements TileEvent {
  const factory _SubmitEvent() = _$_SubmitEvent;
}

/// @nodoc
mixin _$TileState {
  String? get latitudeError => throw _privateConstructorUsedError;
  String? get longitudeError => throw _privateConstructorUsedError;
  String? get zoomError => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  int? get zoom => throw _privateConstructorUsedError;
  int? get x => throw _privateConstructorUsedError;
  int? get y => throw _privateConstructorUsedError;
  String? get tileUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TileStateCopyWith<TileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TileStateCopyWith<$Res> {
  factory $TileStateCopyWith(TileState value, $Res Function(TileState) then) =
      _$TileStateCopyWithImpl<$Res, TileState>;
  @useResult
  $Res call(
      {String? latitudeError,
      String? longitudeError,
      String? zoomError,
      double? latitude,
      double? longitude,
      int? zoom,
      int? x,
      int? y,
      String? tileUrl});
}

/// @nodoc
class _$TileStateCopyWithImpl<$Res, $Val extends TileState>
    implements $TileStateCopyWith<$Res> {
  _$TileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitudeError = freezed,
    Object? longitudeError = freezed,
    Object? zoomError = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? zoom = freezed,
    Object? x = freezed,
    Object? y = freezed,
    Object? tileUrl = freezed,
  }) {
    return _then(_value.copyWith(
      latitudeError: freezed == latitudeError
          ? _value.latitudeError
          : latitudeError // ignore: cast_nullable_to_non_nullable
              as String?,
      longitudeError: freezed == longitudeError
          ? _value.longitudeError
          : longitudeError // ignore: cast_nullable_to_non_nullable
              as String?,
      zoomError: freezed == zoomError
          ? _value.zoomError
          : zoomError // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      zoom: freezed == zoom
          ? _value.zoom
          : zoom // ignore: cast_nullable_to_non_nullable
              as int?,
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int?,
      y: freezed == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int?,
      tileUrl: freezed == tileUrl
          ? _value.tileUrl
          : tileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TileStateCopyWith<$Res> implements $TileStateCopyWith<$Res> {
  factory _$$_TileStateCopyWith(
          _$_TileState value, $Res Function(_$_TileState) then) =
      __$$_TileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? latitudeError,
      String? longitudeError,
      String? zoomError,
      double? latitude,
      double? longitude,
      int? zoom,
      int? x,
      int? y,
      String? tileUrl});
}

/// @nodoc
class __$$_TileStateCopyWithImpl<$Res>
    extends _$TileStateCopyWithImpl<$Res, _$_TileState>
    implements _$$_TileStateCopyWith<$Res> {
  __$$_TileStateCopyWithImpl(
      _$_TileState _value, $Res Function(_$_TileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitudeError = freezed,
    Object? longitudeError = freezed,
    Object? zoomError = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? zoom = freezed,
    Object? x = freezed,
    Object? y = freezed,
    Object? tileUrl = freezed,
  }) {
    return _then(_$_TileState(
      latitudeError: freezed == latitudeError
          ? _value.latitudeError
          : latitudeError // ignore: cast_nullable_to_non_nullable
              as String?,
      longitudeError: freezed == longitudeError
          ? _value.longitudeError
          : longitudeError // ignore: cast_nullable_to_non_nullable
              as String?,
      zoomError: freezed == zoomError
          ? _value.zoomError
          : zoomError // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      zoom: freezed == zoom
          ? _value.zoom
          : zoom // ignore: cast_nullable_to_non_nullable
              as int?,
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int?,
      y: freezed == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int?,
      tileUrl: freezed == tileUrl
          ? _value.tileUrl
          : tileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TileState extends _TileState {
  const _$_TileState(
      {this.latitudeError,
      this.longitudeError,
      this.zoomError,
      this.latitude,
      this.longitude,
      this.zoom,
      this.x,
      this.y,
      this.tileUrl})
      : super._();

  @override
  final String? latitudeError;
  @override
  final String? longitudeError;
  @override
  final String? zoomError;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final int? zoom;
  @override
  final int? x;
  @override
  final int? y;
  @override
  final String? tileUrl;

  @override
  String toString() {
    return 'TileState(latitudeError: $latitudeError, longitudeError: $longitudeError, zoomError: $zoomError, latitude: $latitude, longitude: $longitude, zoom: $zoom, x: $x, y: $y, tileUrl: $tileUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TileState &&
            (identical(other.latitudeError, latitudeError) ||
                other.latitudeError == latitudeError) &&
            (identical(other.longitudeError, longitudeError) ||
                other.longitudeError == longitudeError) &&
            (identical(other.zoomError, zoomError) ||
                other.zoomError == zoomError) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.zoom, zoom) || other.zoom == zoom) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.tileUrl, tileUrl) || other.tileUrl == tileUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitudeError, longitudeError,
      zoomError, latitude, longitude, zoom, x, y, tileUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TileStateCopyWith<_$_TileState> get copyWith =>
      __$$_TileStateCopyWithImpl<_$_TileState>(this, _$identity);
}

abstract class _TileState extends TileState {
  const factory _TileState(
      {final String? latitudeError,
      final String? longitudeError,
      final String? zoomError,
      final double? latitude,
      final double? longitude,
      final int? zoom,
      final int? x,
      final int? y,
      final String? tileUrl}) = _$_TileState;
  const _TileState._() : super._();

  @override
  String? get latitudeError;
  @override
  String? get longitudeError;
  @override
  String? get zoomError;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  int? get zoom;
  @override
  int? get x;
  @override
  int? get y;
  @override
  String? get tileUrl;
  @override
  @JsonKey(ignore: true)
  _$$_TileStateCopyWith<_$_TileState> get copyWith =>
      throw _privateConstructorUsedError;
}
