import 'package:flutter/material.dart';

class GuestListScreen extends StatefulWidget {
  const GuestListScreen({super.key});

  @override
  State<GuestListScreen> createState() => _GuestListScreenState();
}

class _GuestListScreenState extends State<GuestListScreen> {
  final TextEditingController nameController = TextEditingController();

  List<String> guests = [];

  void addGuest() {
    if (nameController.text.trim().isEmpty) return;

    setState(() {
      guests.add(nameController.text.trim());
      nameController.clear();
    });
  }

  void deleteGuest(int index) {
    setState(() {
      guests.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Guest List"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Input + Add Button
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      hintText: "Enter guest name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: addGuest,
                  child: const Text("Add"),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Guest List
            Expanded(
              child: guests.isEmpty
                  ? const Center(child: Text("No guests added"))
                  : ListView.builder(
                      itemCount: guests.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Text(guests[index]),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              onPressed: () => deleteGuest(index),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}