import 'dart:math';

import 'parking_tile_result.dart';

const _tileSize = 256;

class ParkingTileCalculator {
  const ParkingTileCalculator();

  ParkingTileResult microsoftCalculate({
    required double latitude,
    required double longitude,
    required int zoom,
  }) {
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

  ParkingTileResult yandexCalculate({
    required double latitude,
    required double longitude,
    required int zoom,
  }) {
    const e = 0.0818191908426;

    final rho = pow(2, zoom + 8) / 2;
    final beta = latitude * pi / 180;
    final phi = (1 - e * sin(beta)) / (1 + e * sin(beta));
    final theta = tan(pi / 4 + beta / 2) * pow(phi, e / 2);

    final xp = rho * (1 + longitude / 180);
    final yp = rho * (1 - log(theta) / pi);

    return ParkingTileResult(
      x: (xp / _tileSize).floor(),
      y: (yp / _tileSize).floor(),
      z: zoom,
    );
  }
}
