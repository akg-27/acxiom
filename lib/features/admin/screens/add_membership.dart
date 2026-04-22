import 'package:flutter/material.dart';

List<String> memberships = [];

class AddMembershipScreen extends StatefulWidget {
  const AddMembershipScreen({super.key});

  @override
  State<AddMembershipScreen> createState() => _AddMembershipScreenState();
}

class _AddMembershipScreenState extends State<AddMembershipScreen> {
  final controller = TextEditingController();

  void addMembership() {
    if (controller.text.trim().isEmpty) return;

    setState(() {
      memberships.add(controller.text.trim());
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Membership")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: "Membership Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: addMembership,
              child: const Text("Add"),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: memberships.length,
                itemBuilder: (_, i) => ListTile(
                  title: Text(memberships[i]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}