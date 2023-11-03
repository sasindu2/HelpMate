// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helpmate/misc/constants.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

// ignore: use_key_in_widget_constructors
class AddCampaignPage extends StatefulWidget {
  @override
  _AddCampaignPageState createState() => _AddCampaignPageState();
}

class _AddCampaignPageState extends State<AddCampaignPage> {
  final List<String> divisions = ['Haguranketha', 'Belihuloya', 'Buththala'];
  final List<String> categories = [
    'Food',
    'Medical Care',
    'Education',
    'Shelter',
    'Other'
  ];
  File? _userImage;

  Future<void> _getImageFromUser() async {
    final imagePicker = ImagePicker();
    final XFile? image =
        await imagePicker.pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    }
    setState(() {
      _userImage = File(image.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Campaign',
          style: TextStyle(
              fontFamily: "SF-Pro",
              fontSize: 25.0,
              color: Colors.purple,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              textAlign: TextAlign.center,
              decoration: forDecoration('Title'),
            ),
            const SizedBoxH10(),

            TextFormField(
              textAlign: TextAlign.center,
              decoration: forDecoration('Address'),
            ),
            const SizedBoxH10(),
            DropdownButtonFormField<String>(
              alignment: Alignment.center,
              items: divisions.map((division) {
                return DropdownMenuItem<String>(
                  value: division,
                  child: Text(division),
                );
              }).toList(),
              onChanged: (value) {},
              decoration: forDecoration('Select GN Division'),
            ),
            const SizedBoxH10(),
            DropdownButtonFormField<String>(
              alignment: Alignment.center,
              items: categories.map((category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
              onChanged: (value) {},
              decoration: forDecoration('Select Category'),
            ),
            const SizedBoxH10(),

            TextFormField(
              textAlign: TextAlign.center,
              decoration: forDecoration('Alternative Phone Number'),
            ),
            const SizedBoxH10(),

            TextFormField(
              decoration: forDecoration('Describe Your Campaign'),
              maxLines: 3,
            ),
            const SizedBoxH20(),

            CupertinoButton(
              onPressed: _getImageFromUser,
              child: const Text('Upload Image'),
            ),
            if (_userImage != null)
              Image.file(
                _userImage!,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            const SizedBoxH30(),
            // Submit Button
            CupertinoButton(
              borderRadius: const BorderRadius.all(Radius.circular(80)),
              color: Colors.purple,
              onPressed: () {
                // Handle form submission
              },
              child: const Text('Submit For Approval'),
            ),
          ],
        ),
      ),
    );
  }
}
