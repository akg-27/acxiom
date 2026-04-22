import 'package:flutter/material.dart';
import '../../../data/local/dummy_data.dart';

class OrderStatusScreen extends StatelessWidget {
  const OrderStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Order Status")),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text("Order ID: ${order.id}"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Items: ${order.items.length}"),
                  Text("Status: ${order.status}"),
                  Text("Payment: ${order.paymentMethod}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}