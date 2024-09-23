/* import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import '../../../controllers/home_controller.dart';
import 'room1_page.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text("Your Name"), // Set the name
                accountEmail: Text("your.email@example.com"), // Set the email
                decoration: BoxDecoration(
                  color: Colors.blue, // Background color
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/images/profile.png"), // Add your own image
                ),
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Settings'),
                    IconButton(
                      icon: const Icon(Icons.settings),
                      onPressed: () {
                        // Implement settings functionality
                        print("Settings pressed");
                      },
                    ),
                  ],
                ),
                onTap: () {
                  // Handle the tap if needed
                },
              ),
              // Add more ListTiles here if required
            ],
          ),
        ),
        body: Column(
          children: [
            Stack(
              children: [
                ImageSlideshow(
                  width: double.infinity,
                  height: 400,
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
                  top: 120,
                  left: 25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Your existing Row widgets for "성남호", "판교호", "분당호"
                      // ...
                    ],
                  ),
                ),
                const Positioned(
                  top: 120,
                  left: 320,
                  child: Text(
                    '감수된玄: 5%\n습도: 68%\n용짝 : 3m/s',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                Positioned(
                  top: 270,
                  left: 333,
                  child: InkWell(
                    onTap: () {
                      print("Image button pressed");
                    },
                    child: Image.asset(
                      'assets/images/ship_add.png',
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
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
                    topRight: Radius.circular(30),
                  ),
                ),
                isScrollable: false,
                tabs: [
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.0),
                      child: Text("방 1",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.0),
                      child: Text("방 2",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.0),
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
                  SingleChildScrollView(child: Room1Page()),
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
 */