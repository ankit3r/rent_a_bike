import '../model/bike_asse.dart';
import '../model/bike_model.dart';

List<BikeModel> bikeList = [
  BikeModel(
      bikeName: "bike name",
      bikeBrand: "bike Brand",
      bikeImg: "assetes/images/bike/bike01.png",
      bikePrice: 999,
      isAvailable: true,
      type: [
        "Adventure",
        "Cruiser",
      ],
      speed: 100,
      displacement: "1133 cc"),
  BikeModel(
      bikeName: "bike name",
      bikeBrand: "bike Brand",
      bikeImg: "assetes/images/bike/bike02.png",
      bikePrice: 699,
      isAvailable: false,
      type: [
        "Adventure",
        "Cruiser",
      ],
      speed: 124,
      displacement: "1100 cc"),
  BikeModel(
      bikeName: "bike name",
      bikeBrand: "bike Brand",
      bikeImg: "assetes/images/bike/bike03.png",
      bikePrice: 899,
      isAvailable: true,
      type: [
        "Adventure",
        "Cruiser",
        "Tourist",
      ],
      speed: 200,
      displacement: "1000 cc"),
  BikeModel(
      bikeName: "bike name",
      bikeBrand: "bike Brand",
      bikeImg: "assetes/images/bike/bike01.png",
      bikePrice: 499,
      isAvailable: true,
      type: [
        "Adventure",
        "Sports bike",
      ],
      speed: 150,
      displacement: "1333 cc"),
];

List<String> catregory = [
  "Adventure",
  "Cruiser",
  "Sports bike",
  "Tourist",
];

int currentSelectedCategory = 1;

List<BikeAccessories> accessoriesList = [
  BikeAccessories(
      accessoriesName: "Riding Jacket",
      accessoriesImg: "assetes/images/asse/jacket.png",
      accessoriesPrise: 800,
      quantity: 1,
      isAdded: true),
  BikeAccessories(
      accessoriesName: "Riding Gloves",
      accessoriesImg: "assetes/images/asse/gloves.png",
      accessoriesPrise: 800,
      quantity: 1,
      isAdded: false),
  BikeAccessories(
      accessoriesName: "Helmet",
      accessoriesImg: "assetes/images/asse/helmet.png",
      accessoriesPrise: 800,
      quantity: 1,
      isAdded: false),
  BikeAccessories(
      accessoriesName: "Riding Shoes",
      accessoriesImg: "assetes/images/asse/shoes.png",
      accessoriesPrise: 800,
      quantity: 1,
      isAdded: false),
  BikeAccessories(
      accessoriesName: "Riding body armor",
      accessoriesImg: "assetes/images/asse/body_arm.png",
      accessoriesPrise: 1800,
      quantity: 1,
      isAdded: false),
];
