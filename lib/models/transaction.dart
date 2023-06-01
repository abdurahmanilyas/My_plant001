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
  final String paymentUrl;

  Transaction(
      {required this.id,
      required this.plant,
      required this.quantity,
      required this.total,
      required this.dateTime,
      required this.status,
      required this.user,
      required this.paymentUrl});

  factory Transaction.fromJson(Map<String, dynamic> data) => Transaction(
      id: data['id'],
      plant: Plant.fromJson(data['plant']),
      quantity: data['quantity'],
      total: data['total'],
      dateTime: DateTime.fromMillisecondsSinceEpoch(data['created_at']),
      status: (data['status'] == 'PENDING')
          ? TransactionStatus.pending
          : (data['status'] == 'DELIVERED')
          ? TransactionStatus.delivered
          : (data['status'] == 'CANCELLED')
          ? TransactionStatus.cancelled
          : TransactionStatus.on_delivery,
      paymentUrl: data['payment_url']);

  Transaction copyWith({
    int? id,
    Plant? plant,
    int? quantity,
    int? total,
    DateTime? dateTime,
    User? user,
    TransactionStatus? status,
  }) {
    return Transaction(
      id: id ?? this.id,
      plant: plant ?? this.plant,
      quantity: quantity ?? this.quantity,
      total: total ?? this.total,
      dateTime: dateTime ?? this.dateTime,
      user: user ?? this.user,
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props =>
      [id, plant, quantity, total, dateTime, status, user];
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
