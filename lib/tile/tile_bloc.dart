import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../parking_tile_calculator.dart';

part 'tile_event.dart';

part 'tile_state.dart';

part 'tile_bloc.freezed.dart';

const _minLat = -85.05112878;
const _maxLat = 85.05112878;
const _minLon = -180;
const _maxLon = 180;

class TileBloc extends Bloc<TileEvent, TileState> {
  TileBloc(
    this._calculator,
  ) : super(const TileState()) {
    on<_SetLatitudeEvent>(_setLatitude);
    on<_SetLongitudeEvent>(_setLongitude);
    on<_SetZoomEvent>(_setZoom);
    on<_SubmitEvent>(_submit);
  }

  final ParkingTileCalculator _calculator;

  void _setLatitude(
    _SetLatitudeEvent event,
    Emitter<TileState> emit,
  ) {
    if (event.latitude.isEmpty) {
      return emit(
        state.copyWith(
          latitudeError: null,
          latitude: null,
        ),
      );
    }

    final value = double.tryParse(event.latitude.replaceAll(',', '.'));

    if (value == null) {
      return emit(
        state.copyWith(
          latitudeError: 'Invalid value',
        ),
      );
    }

    if (value < _minLat) {
      return emit(
        state.copyWith(
          latitudeError: 'Min is $_minLat',
        ),
      );
    }

    if (value > _maxLat) {
      return emit(
        state.copyWith(
          latitudeError: 'Max is $_maxLat',
        ),
      );
    }

    emit(
      state.copyWith(
        latitudeError: null,
        latitude: value,
      ),
    );
  }

  void _setLongitude(
    _SetLongitudeEvent event,
    Emitter<TileState> emit,
  ) {
    if (event.longitude.isEmpty) {
      return emit(
        state.copyWith(
          longitudeError: null,
          longitude: null,
        ),
      );
    }

    final value = double.tryParse(event.longitude.replaceAll(',', '.'));

    if (value == null) {
      return emit(
        state.copyWith(
          longitudeError: 'Invalid value',
        ),
      );
    }

    if (value < _minLon) {
      return emit(
        state.copyWith(
          longitudeError: 'Min is $_minLon',
        ),
      );
    }

    if (value > _maxLon) {
      return emit(
        state.copyWith(
          longitudeError: 'Max is $_maxLon',
        ),
      );
    }

    emit(
      state.copyWith(
        longitudeError: null,
        longitude: value,
      ),
    );
  }

  void _setZoom(
    _SetZoomEvent event,
    Emitter<TileState> emit,
  ) {
    if (event.zoom.isEmpty) {
      return emit(
        state.copyWith(
          zoomError: null,
          zoom: null,
        ),
      );
    }

    final value = int.tryParse(event.zoom);

    if (value == null) {
      return emit(
        state.copyWith(
          zoomError: 'Invalid value',
        ),
      );
    }

    emit(
      state.copyWith(
        zoomError: null,
        zoom: value,
      ),
    );
  }

  void _submit(
    _SubmitEvent event,
    Emitter<TileState> emit,
  ) {
    if (!state.canSubmit) {
      return;
    }

    final latitude = state.latitude;
    final longitude = state.longitude;
    final zoom = state.zoom;

    if (latitude == null || longitude == null || zoom == null) {
      return;
    }

    final result = _calculator.yandexCalculate(
      latitude: latitude,
      longitude: longitude,
      zoom: zoom,
    );

    final url = 'https://core-carparks-renderer-lots.maps.yandex.net'
        '/maps-rdr-carparks/tiles?l=carparks&'
        'x=${result.x}'
        '&y=${result.y}'
        '&z=${result.z}'
        '&scale=1&lang=ru_RU';

    emit(
      state.copyWith(
        x: result.x,
        y: result.y,
        tileUrl: url,
      ),
    );
  }
}
