import 'package:where_parking/parking_tile_calculator.dart';

void main() {
  const latitude = 55.757794;
  const longitude = 37.599334;
  const zoom = 18;

  print(
    ParkingTileCalculator().microsoftCalculate(
      latitude: latitude,
      longitude: longitude,
      zoom: zoom,
    ),
  );
  print(
    ParkingTileCalculator().yandexCalculate(
      latitude: latitude,
      longitude: longitude,
      zoom: zoom,
    ),
  );
}
