import 'package:flutter/material.dart';
import 'package:helpmate/misc/constants.dart';
import 'package:helpmate/pages/listItems/list_items.dart';

class CampaignPage extends StatelessWidget {
  final NotificationItem notification;

  CampaignPage({required this.notification});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: const Color.fromARGB(
                255, 0, 0, 0)), // Set your desired icon color
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        // title: Text(
        // 'Campaign Page',
        // style: TextStyle(
        //      fontFamily: "SF-Pro",
        //      fontSize: 25.0,
        //      color: Colors.purple,
        //     fontWeight: FontWeight.bold),
        // ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBoxH10(),
            Text(
              ' ${notification.title}',
              style: TextStyle(
                  fontFamily: "SF-Pro",
                  fontSize: 25.0,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0, // Set the background color here
                    ),
                    onPressed: () {
                      // Add your button action here
                    },
                    icon: Icon(
                      Icons.location_on,
                      color: Colors.purple,
                    ), // Add your image here
                    label: Text(''),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Add your button action here
                    },
                    icon: Icon(
                      Icons.phone,
                      color: Colors.purple,
                    ), // Add your image here
                    label: Text(''),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 255, 255, 255),
                      elevation: 0, // Set your desired background color here
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 200, // Set the height as needed
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(20), // Adjust the radius as needed
                child: Image.asset(
                    '${notification.imagePath}'), // Replace with your image asset path
              ), // Create a widget for image slider
            ),
            const SizedBoxH20(),
            Text(
              'Donation Goal',
              style: TextStyle(
                  fontFamily: "SF-Pro",
                  fontSize: 20.0,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBoxH10(),
            Container(
              margin: EdgeInsets.only(
                  left: 40, right: 40), // Adjust the margin as needed
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(10), // Adjust the radius as needed
                child: LinearProgressIndicator(
                  value: 0.6, // Set the progress value
                  minHeight: 20,
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.purple),
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Center the contents horizontally
                children: [
                  Text(
                    '1000/1500 ',
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(
                    Icons.star, // Replace with your desired icon
                    color: const Color.fromARGB(255, 255, 168,
                        38), // Replace with your desired icon color
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your button action here
              },
              child: Text('Donate Now'),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Adjust the radius as needed
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  // Implement your image slider logic here
  // You can use popular packages like carousel_slider or create your custom slider.
  @override
  Widget build(BuildContext context) {
    return Container(
        // Implement your image slider content here
        );
  }
}
