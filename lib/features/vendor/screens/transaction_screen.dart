import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data
    final transactions = [
      {
        "title": "Order #101",
        "amount": "₹1500",
        "date": "12 Apr 2026",
        "status": "Completed",
      },
      {
        "title": "Order #102",
        "amount": "₹800",
        "date": "13 Apr 2026",
        "status": "Pending",
      },
      {
        "title": "Order #103",
        "amount": "₹2200",
        "date": "14 Apr 2026",
        "status": "Completed",
      },
    ];

    Color getStatusColor(String status) {
      switch (status) {
        case "Completed":
          return Colors.green;
        case "Pending":
          return Colors.orange;
        default:
          return Colors.grey;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Transactions"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final txn = transactions[index];

          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Text(txn["title"]!),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Date: ${txn["date"]}"),
                  Text("Amount: ${txn["amount"]}"),
                ],
              ),
              trailing: Text(
                txn["status"]!,
                style: TextStyle(
                  color: getStatusColor(txn["status"]!),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}