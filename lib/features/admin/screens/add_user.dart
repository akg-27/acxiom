import 'package:flutter/material.dart';

List<Map<String, String>> users = [];

class AddUserScreen extends StatefulWidget {
  const AddUserScreen({super.key});

  @override
  State<AddUserScreen> createState() => _AddUserScreenState();
}

class _AddUserScreenState extends State<AddUserScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  void addUser() {
    if (nameController.text.isEmpty || emailController.text.isEmpty) return;

    setState(() {
      users.add({
        "name": nameController.text,
        "email": emailController.text,
      });
      nameController.clear();
      emailController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add User")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: nameController, decoration: const InputDecoration(hintText: "Name")),
            const SizedBox(height: 10),
            TextField(controller: emailController, decoration: const InputDecoration(hintText: "Email")),
            const SizedBox(height: 10),

            ElevatedButton(onPressed: addUser, child: const Text("Add User")),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (_, i) {
                  return ListTile(
                    title: Text(users[i]["name"]!),
                    subtitle: Text(users[i]["email"]!),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}