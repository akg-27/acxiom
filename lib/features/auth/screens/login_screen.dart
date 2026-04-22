import 'package:flutter/material.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String role = 'User';

  void login() {
    if (role == 'Admin') {
      Navigator.pushNamed(context, '/admin');
    } else if (role == 'Vendor') {
      Navigator.pushNamed(context, '/vendor');
    } else {
      Navigator.pushNamed(context, '/user');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          width: 350,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Event Management System",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),

              const CustomTextField(hint: "User ID"),
              const SizedBox(height: 10),
              const CustomTextField(hint: "Password"),
              const SizedBox(height: 10),

              DropdownButton<String>(
                value: role,
                items: ['Admin', 'Vendor', 'User']
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    role = value!;
                  });
                },
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(text: "Cancel", onPressed: () {}),
                  CustomButton(text: "Login", onPressed: login),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}