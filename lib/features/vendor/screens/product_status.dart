import 'package:flutter/material.dart';
import '../../../data/local/dummy_data.dart';

class ProductStatusScreen extends StatefulWidget {
  const ProductStatusScreen({super.key});

  @override
  State<ProductStatusScreen> createState() =>
      _ProductStatusScreenState();
}

class _ProductStatusScreenState extends State<ProductStatusScreen> {
  String selectedStatus = "Pending";

  final statuses = [
    "Pending",
    "Approved",
    "Out for Delivery",
  ];

  void updateStatus(int index) {
    vendorProducts[index].status = selectedStatus;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Status")),
      body: ListView.builder(
        itemCount: vendorProducts.length,
        itemBuilder: (context, index) {
          final product = vendorProducts[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(product.name,
                      style: const TextStyle(fontSize: 18)),

                  Column(
                    children: statuses.map((status) {
                      return RadioListTile(
                        title: Text(status),
                        value: status,
                        groupValue: selectedStatus,
                        onChanged: (value) {
                          setState(() {
                            selectedStatus = value!;
                          });
                        },
                      );
                    }).toList(),
                  ),

                  ElevatedButton(
                    onPressed: () => updateStatus(index),
                    child: const Text("Update"),
                  ),

                  Text("Current: ${product.status}")
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}