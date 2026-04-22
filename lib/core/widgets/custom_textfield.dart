import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    required this.hint,
    this.controller, 
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller, // will work even if null
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hint,
      ),
    );
  }
}