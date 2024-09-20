/* import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Stack(
          children: [
            ImageSlideshow(
              width: double.infinity,
              height: 350,
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
                icon: const Icon(Icons.menu, color: Colors.black, size: 40),
                onPressed: () {
                  // Code to open a drawer or another menu
                },
              ),
            ),
            Positioned(
              top: 120,
              left: 25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Row(
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/circle.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Text(
                          "성남호",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Opacity(
                    opacity: 0.5,
                    child: Row(
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/circle.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Text(
                          "판교호",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Opacity(
                    opacity: 0.5,
                    child: Row(
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/circle.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Text(
                          "분당호",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 */