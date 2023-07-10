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
  ) {}

  void _setLongitude(
    _SetLongitudeEvent event,
    Emitter<TileState> emit,
  ) {}

  void _setZoom(
    _SetZoomEvent event,
    Emitter<TileState> emit,
  ) {}

  void _submit(
    _SubmitEvent event,
    Emitter<TileState> emit,
  ) {}
}
