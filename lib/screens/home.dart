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
      length: 3, // Số lượng tabs
      child: Scaffold(
        body: Column(
          children: [
            Stack(
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
                    Image.asset('assets/images/home.png', fit: BoxFit.cover),
                    Image.asset('assets/images/home1.png', fit: BoxFit.cover),
                    Image.asset('assets/images/home2.png', fit: BoxFit.cover),
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
            Container(
              color: Colors.blue,
              child: const TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                isScrollable: false,
                tabs: [
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text("방 1",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text("방 2",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text("방 3",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  Room1Content(),
                  Center(child: Text("Content for Room2")),
                  Center(child: Text("Content for Room3")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Room1Content extends StatelessWidget {
  const Room1Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Room 1',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '수동 모드: ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ToggleButtons(
                isSelected: const [true],
                onPressed: null,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'ON',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
 */