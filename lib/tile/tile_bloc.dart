import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tile_event.dart';

part 'tile_state.dart';

part 'tile_bloc.freezed.dart';

class TileBloc extends Bloc<TileEvent, TileState> {
  TileBloc() : super(const TileState()) {
    on<_SetLatitudeEvent>(_setLatitude);
    on<_SetLongitudeEvent>(_setLongitude);
    on<_SetZoomEvent>(_setZoom);
    on<_SubmitEvent>(_submit);
  }

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
  }
}
