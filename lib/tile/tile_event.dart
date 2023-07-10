part of 'tile_bloc.dart';

@freezed
class TileEvent with _$TileEvent {
  const factory TileEvent.setLatitude(String latitude) = _SetLatitudeEvent;

  const factory TileEvent.setLongitude(String longitude) = _SetLongitudeEvent;

  const factory TileEvent.setZoom(String zoom) = _SetZoomEvent;

  const factory TileEvent.submit() = _SubmitEvent;
}
