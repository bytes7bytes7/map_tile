class ParkingTileResult {
  const ParkingTileResult({
    required this.x,
    required this.y,
    required this.z,
  });

  final int x;
  final int y;
  final int z;

  @override
  String toString() {
    return 'ParkingTileResult {x: $x, y: $y, z: $z}';
  }
}
