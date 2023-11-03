import 'package:flutter/material.dart';

class NewsFeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: Center(
        child: Text('News Feed Content'),
      ),
    );
  }
}
