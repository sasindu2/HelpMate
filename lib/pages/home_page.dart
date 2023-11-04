import 'package:flutter/material.dart';
import 'package:helpmate/pages/Home.dart';
import 'package:helpmate/pages/add_campaign.dart';
import 'package:helpmate/pages/news_feed.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const LocationTab(),
    const HomeTab(),
    const AddCampaignTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      // title: const Text('Nav Bar'),
      // foregroundColor: Colors.black,
      // backgroundColor: Colors.white,
      // ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'News Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Campaign',
          ),
        ],
      ),
    );
  }
}

class LocationTab extends StatelessWidget {
  const LocationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const NewsFeed();
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const EditProfileUI();
  }
}

class AddCampaignTab extends StatelessWidget {
  const AddCampaignTab({super.key});

  @override
  Widget build(BuildContext context) {
    return AddCampaignPage();
  }
}
