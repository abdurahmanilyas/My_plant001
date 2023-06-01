part of 'models.dart';

enum PlantType { newPlant, recommended, popular }

class Plant extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<PlantType> types;

  const Plant({
    required this.id,
    required this.picturePath,
    required this.name,
    required this.description,
    required this.ingredients,
    required this.price,
    required this.rate,
    this.types = const [],
  });

  factory Plant.fromJson(Map<String, dynamic> data) => Plant(
      id: data['id'],
      picturePath: data['picturePath'],
      name: data['name'],
      description: data['description'],
      ingredients: data['ingredients'],
      price: data['price'],
      rate: (data['rate'] as num).toDouble(),
      types: data['types'].toString().split(',').map((e) {
        switch (e) {
          case 'recommended':
            return PlantType.recommended;
            break;
          case 'popular':
            return PlantType.popular;
            break;
          default:
            return PlantType.new_plant;
        }
      }).toList());

  @override
  List<Object?> get props =>
      [id, picturePath, name, description, ingredients, price, rate, types];
}

List<Plant> mockPlants = [
  Plant(
    id: 1,
    picturePath:
        "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSC9MqkNaVaQajeL5JPqB4tNHGEJ-tZWqtBWHMxW7yvkkAemPH",
    name: "Monstera",
    description:
        "Tanaman hias daun satu ini merupakan salah satu tanaman dekorasi kekinian yang sangat digemari saat ini. Bentuk daun menjadi dengan ciri khas lubang-lubang membuat Monstera sangat unik dan kerap menjadi pilihan dekorasi asri untuk hunian-hunian modern masa kini.",
    ingredients: "Bawang Merah, Paprika, Bawang Bombay, Timun",
    price: 150000,
    rate: 4.2,
    types: [PlantType.newPlant, PlantType.recommended, PlantType.popular],
  ),
  Plant(
    id: 2,
    picturePath:
        "https://img.freepik.com/free-photo/hanging-pothos-plant-gray_53876-146607.jpg?size=626&ext=jpg&ga=GA1.1.695213874.1684783908&semt=ais",
    name: "Philodendron hederaceum Tamayo",
    description:
        "Tanaman hias daun satu ini merupakan salah satu tanaman dekorasi kekinian yang sangat digemari saat ini. Bentuk daun menjadi dengan ciri khas lubang-lubang membuat Monstera sangat unik dan kerap menjadi pilihan dekorasi asri untuk hunian-hunian modern masa kini.",
    ingredients: "Daging Sapi Korea, Garam, Lada Hitam",
    price: 750000,
    rate: 4.5,
    types: [PlantType.recommended],
  ),
  Plant(
    id: 3,
    picturePath:
        "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSST6uHVlfrfmFOknwPpo7LZR0J8GZXyOtwyJFDylwZZR1DCV",
    name: "Caladium",
    description:
        "Tanaman hias daun ini merupakan salah satu tanaman dekorasi kekinian yang sangat digemari saat ini. Bentuk daun menjadi dengan ciri khas lubang-lubang membuat Monstera sangat unik dan kerap menjadi pilihan dekorasi asri untuk hunian-hunian modern masa kini.",
    ingredients: "Bawang Merah, Paprika, Bawang Bombay, Timun",
    price: 125000,
    rate: 4.2,
  ),
  Plant(
    id: 4,
    picturePath:
        "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR05jwuSj-sqR880SO8qCtQm8s2I_JVvZ87DGthwP13hJLfyccp",
    name: "Palem Kipas",
    description:
        "Tanaman hias daun satu ini merupakan salah satu tanaman dekorasi kekinian yang sangat digemari saat ini. Bentuk daun menjadi dengan ciri khas lubang-lubang membuat Monstera sangat unik dan kerap menjadi pilihan dekorasi asri untuk hunian-hunian modern masa kini.",
    ingredients: "Bawang Merah, Paprika, Bawang Bombay, Timun",
    price: 190000,
    rate: 4.2,
    types: [PlantType.newPlant],
  ),
  Plant(
    id: 5,
    picturePath:
        "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRsHZyrDuvaZLk7JNMU6IXfO-2saqRBJMngQbt19ngp0qgZu8",
    name: "Caladium Bicolor",
    description:
        "Tanaman hias daun satu ini merupakan salah satu tanaman dekorasi kekinian yang sangat digemari saat ini. Bentuk daun menjadi dengan ciri khas lubang-lubang membuat Monstera sangat unik dan kerap menjadi pilihan dekorasi asri untuk hunian-hunian modern masa kini.",
    ingredients: "Bawang Merah, Paprika, Bawang Bombay, Timun",
    price: 170000,
    rate: 4.2,
    types: [PlantType.newPlant],
  ),
];
