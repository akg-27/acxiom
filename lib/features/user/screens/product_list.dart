import 'package:flutter/material.dart';
import '../../../data/local/dummy_data.dart';
import '../../../data/models/cart_model.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final vendor = ModalRoute.of(context)!.settings.arguments as String;

    final products =
        vendorProducts.where((p) => p.vendorName == vendor).toList();

    return Scaffold(
      appBar: AppBar(title: Text(vendor)),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
            child: ListTile(
              title: Text(product.name),
              subtitle: Text("₹ ${product.price}"),
              trailing: ElevatedButton(
                child: const Text("Add to Cart"),
                onPressed: () {
                  cartItems.add(CartItem(product: product));
                },
              ),
            ),
          );
        },
      ),
    );
  }
}