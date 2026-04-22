import 'cart_model.dart';

class Order {
  String id;
  List<CartItem> items;
  String address;
  String paymentMethod;
  String status;

  Order({
    required this.id,
    required this.items,
    required this.address,
    required this.paymentMethod,
    this.status = "Placed",
  });
}