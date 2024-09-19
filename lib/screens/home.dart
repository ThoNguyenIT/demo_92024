import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ImageSlideshow(
            width: double.infinity,
            height: 405,
            initialPage: 0,
            indicatorColor: Colors.blue,
            indicatorBackgroundColor: Colors.grey,
            autoPlayInterval: 9000,
            isLoop: true,
            children: [
              Image.asset(
                'assets/images/home.png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/home1.png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/home2.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.menu, color: Colors.black, size: 30),
              onPressed: () {
                // Code to open a drawer or another menu
              },
            ),
          ),
        ],
      ),
    );
  }
}
