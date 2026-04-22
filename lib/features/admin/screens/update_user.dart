import 'package:flutter/material.dart';
import 'add_user.dart';

class UpdateUserScreen extends StatefulWidget {
  const UpdateUserScreen({super.key});

  @override
  State<UpdateUserScreen> createState() => _UpdateUserScreenState();
}

class _UpdateUserScreenState extends State<UpdateUserScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  void updateUser(int index) {
    setState(() {
      users[index]["name"] = nameController.text;
      users[index]["email"] = emailController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Update User")),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (_, index) {
          return ListTile(
            title: Text(users[index]["name"]!),
            subtitle: Text(users[index]["email"]!),
            trailing: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                nameController.text = users[index]["name"]!;
                emailController.text = users[index]["email"]!;

                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text("Update User"),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(controller: nameController),
                        TextField(controller: emailController),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          updateUser(index);
                          Navigator.pop(context);
                        },
                        child: const Text("Save"),
                      )
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}