part of 'models.dart';

class Plant extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  const Plant(
      {required this.id,
      required this.picturePath,
      required this.name,
      required this.description,
      required this.ingredients,
      required this.price,
      required this.rate});

  @override
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Plant> mockPlants = [
  Plant(
      id: 1,
      picturePath:
      "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSC9MqkNaVaQajeL5JPqB4tNHGEJ-tZWqt1BWHMxW7yvkkAemPH",
      name: "Monstera",
      description:
          "Tanaman hias daun satu ini merupakan salah satu tanaman dekorasi kekinian yang sangat digemari saat ini. Bentuk daun menjadi dengan ciri khas lubang-lubang membuat Monstera sangat unik dan kerap menjadi pilihan dekorasi asri untuk hunian-hunian modern masa kini.",
      ingredients: "Bawang Merah, Paprika, Bawang Bombay, Timun",
      price: 150000,
      rate: 4.2),
  Plant(
      id: 2,
      picturePath:
          "https://img.freepik.com/free-photo/hanging-pothos-plant-gray_53876-146607.jpg?size=626&ext=jpg&ga=GA1.1.695213874.1684783908&semt=ais",
      name: "Philodendron hederaceum Tamayo",
      description:
          "Tanaman hias daun satu ini merupakan salah satu tanaman dekorasi kekinian yang sangat digemari saat ini. Bentuk daun menjadi dengan ciri khas lubang-lubang membuat Monstera sangat unik dan kerap menjadi pilihan dekorasi asri untuk hunian-hunian modern masa kini.",
      ingredients: "Daging Sapi Korea, Garam, Lada Hitam",
      price: 750000,
      rate: 4.5),
  Plant(
      id: 3,
      picturePath:
      "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSST-W6uHVlfrfmFOknwPpo7LZR0J8GZXyOtwyJFDylwZZR1DCV",
      name: "Caladium",
      description:
      "Tanaman hias daun satu ini merupakan salah satu tanaman dekorasi kekinian yang sangat digemari saat ini. Bentuk daun menjadi dengan ciri khas lubang-lubang membuat Monstera sangat unik dan kerap menjadi pilihan dekorasi asri untuk hunian-hunian modern masa kini.",
      ingredients: "Bawang Merah, Paprika, Bawang Bombay, Timun",
      price: 125000,
      rate: 4.2),
  Plant(
      id: 4,
      picturePath:
      "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR05jwuSj-sqR880SO8qCtQm8s2I_JVvZ87DGthwP13hJLfyccp",
      name: "Palem Kipas",
      description:
      "Tanaman hias daun satu ini merupakan salah satu tanaman dekorasi kekinian yang sangat digemari saat ini. Bentuk daun menjadi dengan ciri khas lubang-lubang membuat Monstera sangat unik dan kerap menjadi pilihan dekorasi asri untuk hunian-hunian modern masa kini.",
      ingredients: "Bawang Merah, Paprika, Bawang Bombay, Timun",
      price: 190000,
      rate: 4.2),
  Plant(
      id: 5,
      picturePath:
      "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRsHZyrDuvaZLk7JNMU6IXfO-2saqRBJMngQbt19tfngp0qgZu8",
      name: "Caladium Bicolor",
      description:
      "Tanaman hias daun satu ini merupakan salah satu tanaman dekorasi kekinian yang sangat digemari saat ini. Bentuk daun menjadi dengan ciri khas lubang-lubang membuat Monstera sangat unik dan kerap menjadi pilihan dekorasi asri untuk hunian-hunian modern masa kini.",
      ingredients: "Bawang Merah, Paprika, Bawang Bombay, Timun",
      price: 170000,
      rate: 4.2),
];
