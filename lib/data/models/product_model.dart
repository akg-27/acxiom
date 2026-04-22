class Product {
  String name;
  String price;
  String status;
  String vendorName;

  Product({
    required this.name,
    required this.price,
    required this.vendorName,
    this.status = "Pending",
  });
}