import 'package:flutter/material.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Home"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/'),
            child: const Text("Logout", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/vendors'),
              child: const Text("Vendor"),
            ),

            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/cart'),
              child: const Text("Cart"),
            ),

            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/order-status'),
              child: const Text("Order Status"),
            ),

            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/guest-list'),
              child: const Text("Guest List"),
            ),
          ],
        ),
      ),
    );
  }
}
