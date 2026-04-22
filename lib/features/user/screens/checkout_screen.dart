import 'package:flutter/material.dart';
import '../../../data/local/dummy_data.dart';
import '../../../data/models/order_model.dart';
import 'order_success.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final addressController = TextEditingController();
  String paymentMethod = "Cash on Delivery";

  void placeOrder() {
    if (cartItems.isEmpty) return;

    orders.add(
      Order(
        id: DateTime.now().toString(),
        items: List.from(cartItems),
        address: addressController.text,
        paymentMethod: paymentMethod,
      ),
    );

    cartItems.clear();

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => const OrderSuccessScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Checkout")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: addressController,
              decoration: const InputDecoration(
                labelText: "Delivery Address",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            DropdownButton<String>(
              value: paymentMethod,
              items: [
                "Cash on Delivery",
                "UPI",
                "Card",
              ].map((e) {
                return DropdownMenuItem(value: e, child: Text(e));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  paymentMethod = value!;
                });
              },
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: placeOrder,
              child: const Text("Place Order"),
            )
          ],
        ),
      ),
    );
  }
}