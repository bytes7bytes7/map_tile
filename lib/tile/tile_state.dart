part of 'tile_bloc.dart';

@freezed
class TileState with _$TileState {
  const factory TileState({
    @Default(false) bool isLoading,
    @Default('') String error,
    @Default('') String latitudeError,
    @Default('') String longitudeError,
    @Default('') String zoomError,
    double? latitude,
    double? longitude,
    int? zoom,
  }) = _TileState;

  const TileState._();

  bool get canSubmit {
    if (isLoading) {
      return false;
    }

    if (latitudeError.isNotEmpty) {
      return false;
    }

    if (longitudeError.isNotEmpty) {
      return false;
    }

    if (zoomError.isNotEmpty) {
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

    return false;
  }
}
