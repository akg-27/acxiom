import 'package:flutter/material.dart';

class VendorListScreen extends StatelessWidget {
  const VendorListScreen({super.key});

  final vendors = const ["Vendor 1", "Vendor 2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Vendors")),
      body: ListView(
        children: vendors.map((vendor) {
          return ListTile(
            title: Text(vendor),
            trailing: ElevatedButton(
              child: const Text("View"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/products',
                  arguments: vendor,
                );
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}