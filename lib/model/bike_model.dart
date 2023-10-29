class BikeModel {
  final String bikeName;
  final String bikeBrand;
  final String bikeImg;
  final int bikePrice;
  final bool isAvailable;
  final List<String> type;
  final double speed;
  final  String displacement;

  BikeModel( {
    required this.bikeName,
    required this.bikeBrand,
    required this.bikeImg,
    required this.bikePrice,
    this.isAvailable = true,
    required this.type,
    required this.speed,
    required this.displacement,
  });
}