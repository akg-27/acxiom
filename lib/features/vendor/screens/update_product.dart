import 'package:flutter/material.dart';
import '../../../data/models/product_model.dart';
import '../../../core/widgets/custom_button.dart';

class UpdateProductScreen extends StatefulWidget {
  final Product product;

  const UpdateProductScreen({super.key, required this.product});

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  late TextEditingController nameController;
  late TextEditingController priceController;

  @override
  void initState() {
    nameController = TextEditingController(text: widget.product.name);
    priceController = TextEditingController(text: widget.product.price);
    super.initState();
  }

  void updateProduct() {
    widget.product.name = nameController.text;
    widget.product.price = priceController.text;

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Update Product")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: nameController),
            const SizedBox(height: 10),
            TextField(controller: priceController),
            const SizedBox(height: 20),
            CustomButton(text: "Update", onPressed: updateProduct),
          ],
        ),
      ),
    );
  }
}