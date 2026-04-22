import 'package:flutter/material.dart';

class VendorHome extends StatefulWidget {
  const VendorHome({super.key});

  @override
  State<VendorHome> createState() => _VendorHomeState();
}

class _VendorHomeState extends State<VendorHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vendor Home"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pushNamedAndRemoveUntil(
              context,
              '/',
              (route) => false,
            ),
            child: const Text("Logout", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () async {
                await Navigator.pushNamed(context, '/vendor-products');
                setState(() {}); 
              },
              child: const Text("Your Item"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () async {
                await Navigator.pushNamed(context, '/add-product');
                setState(() {}); 
              },
              child: const Text("Add New Item"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/transactions'),
              child: const Text("Transaction"),
            ),
          ],
        ),
      ),
    );
  }
}
