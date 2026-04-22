import 'package:flutter/material.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_textfield.dart';
import '../../../data/local/dummy_data.dart';
import '../../../data/models/product_model.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final nameController = TextEditingController();
  final priceController = TextEditingController();

  void addProduct() {
    if (nameController.text.trim().isEmpty ||
        priceController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please fill all fields")),
      );
      return;
    }

    vendorProducts.add(
      Product(
        name: nameController.text.trim(),
        price: priceController.text.trim(),
        vendorName: "Vendor 1", // ✅ FIX THIS (important for filtering)
      ),
    );

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Product")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomTextField(
              hint: "Product Name",
              controller: nameController, // ✅ FIX
            ),

            const SizedBox(height: 10),

            CustomTextField(
              hint: "Product Price",
              controller: priceController, // ✅ FIX
            ),

            const SizedBox(height: 20),

            CustomButton(
              text: "Add Product",
              onPressed: addProduct,
            ),
          ],
        ),
      ),
    );
  }
}