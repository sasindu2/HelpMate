import 'package:flutter/material.dart';

class AddCampaignPage extends StatelessWidget {
  final List<String> divisions = ['Division A', 'Division B', 'Division C'];
  final List<String> categories = ['Category X', 'Category Y', 'Category Z'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Campaign'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Title'),
            ),

            TextFormField(
              decoration: const InputDecoration(labelText: 'Address'),
            ),

            DropdownButtonFormField<String>(
              items: divisions.map((division) {
                return DropdownMenuItem<String>(
                  value: division,
                  child: Text(division),
                );
              }).toList(),
              onChanged: (value) {},
              decoration:
                  const InputDecoration(labelText: 'Select GN Division'),
            ),

            DropdownButtonFormField<String>(
              items: categories.map((category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
              onChanged: (value) {},
              decoration: const InputDecoration(labelText: 'Select Category'),
            ),

            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Alternative Phone Number'),
            ),

            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Describe Your Campaign'),
              maxLines: 3,
            ),

            ElevatedButton(
              onPressed: () {
                // Implement photo upload feature
              },
              child: const Text('Upload Photo'),
            ),
            // Submit Button
            ElevatedButton(
              onPressed: () {
                // Handle form submission
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
