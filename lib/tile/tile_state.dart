part of 'tile_bloc.dart';

@freezed
class TileState with _$TileState {
  const factory TileState({
    String? latitudeError,
    String? longitudeError,
    String? zoomError,
    double? latitude,
    double? longitude,
    int? zoom,
    int? x,
    int? y,
    String? tileUrl,
  }) = _TileState;

  const TileState._();

  bool get canSubmit {
    if (latitudeError != null) {
      return false;
    }

    if (longitudeError != null) {
      return false;
    }

    if (zoomError != null) {
      return false;
    }

    if (latitude == null) {
      return false;
    }

    if (longitude == null) {
      return false;
    }

    if (zoom == null) {
      return false;
    }

    return true;
  }
}
