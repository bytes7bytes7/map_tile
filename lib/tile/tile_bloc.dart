import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../parking_tile_calculator.dart';

part 'tile_event.dart';

part 'tile_state.dart';

part 'tile_bloc.freezed.dart';

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
          latitudeError: 'Невалидное значение',
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
          longitudeError: 'Невалидное значение',
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
          zoomError: 'Невалидное значение',
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
        tileUrl: url,
      ),
    );
  }
}
