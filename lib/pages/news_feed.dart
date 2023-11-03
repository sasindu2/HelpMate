import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class NewsFeed extends StatefulWidget {
  const NewsFeed({Key? key});

  @override
  State<NewsFeed> createState() => __NewsFeedState();
}

class __NewsFeedState extends State<NewsFeed> {
  int _selectedIndex = 0;

  List<Color> _getActiveColor(int index) {
    return [
      if (_selectedIndex == index)
        const Color.fromARGB(255, 127, 71, 159)
      else
        const Color.fromARGB(255, 186, 144, 194),
    ];
  }

  void _onToggle(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 2,
        elevation: 0,
        actions: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ToggleSwitch(
                  minWidth: 90.0,
                  cornerRadius: 20.0,
                  activeBgColors: [
                    _getActiveColor(0),
                    _getActiveColor(1),
                  ],
                  activeFgColor: Colors.white,
                  inactiveBgColor: const Color.fromARGB(255, 186, 144, 194),
                  inactiveFgColor: Colors.white,
                  initialLabelIndex: _selectedIndex, // Set the initial index
                  totalSwitches: 2,
                  labels: const ['News Feed', 'Map'],
                  //icons: [
                  //  Icons.book_online_outlined,
                  //  Icons.location_city_sharp
                  // ],
                  radiusStyle: true,
                  onToggle: _onToggle,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Offstage(
              offstage: _selectedIndex != 0,
              child: const Center(
                child: Text('News Feed'), // Your "News Feed" content
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Offstage(
              offstage: _selectedIndex != 1,
              child: const Center(
                child: Text('Map Content'), // Your "Map" content
              ),
            ),
          ),
        ],
      ),
    );
  }
}
