import '../models/product_model.dart';
import '../models/cart_model.dart';
import '../models/order_model.dart';

List<Product> vendorProducts = [
  Product(name: "Flower Decor", price: "500", vendorName: "Vendor 1"),
  Product(name: "Lighting", price: "800", vendorName: "Vendor 1"),
  Product(name: "Catering", price: "1500", vendorName: "Vendor 2"),
];

List<CartItem> cartItems = [];
List<Order> orders = [];