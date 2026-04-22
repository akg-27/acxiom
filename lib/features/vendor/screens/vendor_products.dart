import 'package:flutter/material.dart';
import '../../../data/local/dummy_data.dart';
import '../widgets/product_card.dart';
import 'update_product.dart';

class VendorProductsScreen extends StatefulWidget {
  const VendorProductsScreen({super.key});

  @override
  State<VendorProductsScreen> createState() =>
      _VendorProductsScreenState();
}

class _VendorProductsScreenState extends State<VendorProductsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Your Products")),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.pushNamed(context, '/add-product');
          setState(() {}); 
        },
        child: const Icon(Icons.add),
      ),

      body: vendorProducts.isEmpty
          ? const Center(
              child: Text(
                "No Products Added",
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: vendorProducts.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  product: vendorProducts[index],

                  onDelete: () {
                    setState(() {
                      vendorProducts.removeAt(index);
                    });
                  },

                  onUpdate: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => UpdateProductScreen(
                          product: vendorProducts[index],
                        ),
                      ),
                    );
                    setState(() {}); 
                  },
                );
              },
            ),
    );
  }
}