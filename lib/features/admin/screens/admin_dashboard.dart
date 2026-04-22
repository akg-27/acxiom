import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin"),
        actions: [
          TextButton(
            onPressed: () =>
                Navigator.pushNamedAndRemoveUntil(context, '/', (r) => false),
            child: const Text("Logout", style: TextStyle(color: Colors.white)),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),

          const Text(
            "Welcome Admin",
            style: TextStyle(fontSize: 22),
          ),

          const SizedBox(height: 40),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, '/membership'),
                child: const Text("Membership"),
              ),
              ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, '/user-management'),
                child: const Text("User Management"),
              ),
            ],
          )
        ],
      ),
    );
  }
}