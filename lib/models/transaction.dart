part of 'models.dart';

enum TransactionStatus { delivered, on_delivery, pending, cancelled }

class Transaction extends Equatable {
  final int id;
  final Plant plant;
  final int quantity;
  final int total;
  final DateTime dateTime;
  final TransactionStatus status;
  final User user;

  const Transaction(
      {required this.id,
      required this.plant,
      required this.quantity,
      required this.total,
      required this.dateTime,
      required this.status,
      required this.user});

  Transaction copyWith(
      {required int id,
      required Plant plant,
      required int quantity,
      required int total,
      required DateTime dateTime,
      required TransactionStatus status,
      required User user}) {
    return Transaction(
        id: id ?? this.id,
        plant: plant ?? this.plant,
        quantity: quantity ?? this.quantity,
        total: total ?? this.total,
        dateTime: dateTime ?? this.dateTime,
        status: status ?? this.status,
        user: user ?? this.user);
  }

  @override
  List<Object> get props => [id, plant, quantity, total, dateTime, status, user];
}

List<Transaction> mockTransactions = [
  Transaction(
      id: 1,
      plant: mockPlants[1],
      quantity: 10,
      total: (mockPlants[1].price * 10 * 1.1).round() + 50000,
      dateTime: DateTime.now(),
      status: TransactionStatus.on_delivery,
      user: mockUser),
  Transaction(
      id: 2,
      plant: mockPlants[2],
      quantity: 7,
      total: (mockPlants[2].price * 7 * 1.1).round() + 50000,
      dateTime: DateTime.now(),
      status: TransactionStatus.delivered,
      user: mockUser),
  Transaction(
      id: 3,
      plant: mockPlants[3],
      quantity: 5,
      total: (mockPlants[3].price * 5 * 1.1).round() + 50000,
      dateTime: DateTime.now(),
      status: TransactionStatus.cancelled,
      user: mockUser)
];
