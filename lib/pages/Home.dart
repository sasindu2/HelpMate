// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:helpmate/routes/route_manager.dart';

class EditProfileUI extends StatefulWidget {
  const EditProfileUI({super.key});
  @override
  State<EditProfileUI> createState() => _EditPrfoileUIState();
}

class _EditPrfoileUIState extends State<EditProfileUI> {
  @override
  Widget build(BuildContext context) {
    final imgList = [
      'https://usercontent2.hubstatic.com/5630013_f520.jpg'
          'https://th.bing.com/th/id/R.feae57758decb824351e41731c6b97d2?rik=6lEFqKz7IvxWiw&riu=http%3a%2f%2fstatic.dailymirror.lk%2fmedia%2fimages%2fimage_1465131350-153524ea61.jpg&ehk=XnszjBBcl5N24FTSl4BRnsnjoCFEvf7bPEFFrbGR55A%3d&risl=&pid=ImgRaw&r=0'
          'https://th.bing.com/th/id/R.dfe90cd7057bac49472fe291f3c6b559?rik=53BYuZsS62ZonQ&pid=ImgRaw&r=0'
          'https://th.bing.com/th/id/OIP.eGpXN2wkjP0F01N3TYwMKQHaE8?pid=ImgDet&rs=1'
          'https://th.bing.com/th/id/OIP.kE-vLtxRewaIRaXtgVuoFwHaFj?pid=ImgDet&rs=1'
          'https://th.bing.com/th/id/R.bbf63f30d8147c0718f23a9c053d9d96?rik=rRn6mBOVVhJTjA&riu=http%3a%2f%2fwww.thepapare.com%2fwp-content%2fuploads%2f1531836040417715985437.jpg&ehk=Vl8NyuRe2WaOnYj6jlUrzA6u3xQg1ouxpbOdl5Ganz4%3d&risl=&pid=ImgRaw&r=0'
    ];
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(item, fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: const Row(
                            children: [
                              Text('750',
                                  style: TextStyle(color: Colors.white)),
                              FaIcon(FontAwesomeIcons.star,
                                  color: Color.fromARGB(255, 216, 216, 3),
                                  size: 15)
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ))
        .toList();

    //const isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.bell,
              size: 20,
              color: Colors.purple,
            )),
        actions: [
          IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.bars,
              color: Colors.purple,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            SizedBox(
              width: 120,
              height: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/profile-icon.png',
                  height: 70,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text('Gorge Harword',
                style: TextStyle(
                    fontFamily: "SF-Pro",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 107, 16, 124))),
            const SizedBox(
              height: 5,
            ),
            const Text('Level 2',
                style: TextStyle(color: Color.fromARGB(255, 107, 16, 124))),
            const SizedBox(height: 7),
            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('230',
                      style:
                          TextStyle(color: Color.fromARGB(255, 107, 16, 124))),
                  FaIcon(FontAwesomeIcons.star,
                      color: Color.fromARGB(255, 216, 216, 3), size: 15)
                ],
              ),
            ),
            CupertinoButton(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                color: Colors.purple,
                child: const Text(
                  'Edit Profile',
                  style: TextStyle(
                    fontFamily: "SF-Pro",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.popAndPushNamed(context, RouteManager.registerPage);
                }),
            const SizedBox(height: 30),
            const Text('Recent Contributions',
                style: TextStyle(
                    fontFamily: "SF-Pro", fontSize: 15, color: Colors.black)),
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                initialPage: 2,
                autoPlay: true,
              ),
              items: imageSliders,
            ),
            const SizedBox(height: 30),
            const Text('My Campaigns',
                style: TextStyle(
                    fontFamily: "SF-Pro", fontSize: 15, color: Colors.black)),
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                initialPage: 2,
                autoPlay: true,
              ),
              items: imageSliders,
            ),
          ]),
        ),
      ),
    );
  }

  Widget content() {
    return Container();
  }
}
