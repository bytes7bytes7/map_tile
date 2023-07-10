import 'dart:math';

import 'parking_tile_result.dart';

const _tileSize = 256;

class ParkingTileCalculator {
  const ParkingTileCalculator();

  ParkingTileResult calculate({
    required double latitude,
    required double longitude,
    required int zoom,
  }) {
    final mapWidth = _tileSize * pow(2, zoom);
    final mapHeight = mapWidth;

    final sinLatitude = sin(latitude * pi / 180);

    final xPixel = ((longitude + 180) / 360) * _tileSize * pow(2, zoom);
    final yPixel =
        (0.5 - log((1 + sinLatitude) / (1 - sinLatitude)) / (4 * pi)) *
            _tileSize *
            pow(2, zoom);

    final x = (xPixel / _tileSize).floor();
    final y = (yPixel / _tileSize).floor();

    return ParkingTileResult(x: x, y: y, z: zoom);
  }
}
