import 'package:flutter/material.dart';
import 'add_membership.dart';

class UpdateMembershipScreen extends StatefulWidget {
  const UpdateMembershipScreen({super.key});

  @override
  State<UpdateMembershipScreen> createState() =>
      _UpdateMembershipScreenState();
}

class _UpdateMembershipScreenState extends State<UpdateMembershipScreen> {
  final controller = TextEditingController();

  void updateMembership(int index) {
    if (controller.text.trim().isEmpty) return;

    setState(() {
      memberships[index] = controller.text.trim();
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Update Membership")),
      body: ListView.builder(
        itemCount: memberships.length,
        itemBuilder: (_, index) {
          return ListTile(
            title: Text(memberships[index]),
            trailing: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                controller.text = memberships[index];

                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text("Update"),
                    content: TextField(controller: controller),
                    actions: [
                      TextButton(
                        onPressed: () {
                          updateMembership(index);
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