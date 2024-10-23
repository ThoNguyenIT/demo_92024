import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import '../../../controllers/home_controller.dart';
import '../../../routes/app_routes.dart';
import 'room1_page.dart';
import 'room2_page.dart';
import 'room3_page.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer());
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 227, 227, 227),
                  border:
                      Border(left: BorderSide(width: 5, color: Colors.blue)),
                ),
                child: TextButton(
                  onPressed: () => Get.toNamed(AppRoutes.optionmenu),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('설정',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Icon(Icons.settings_applications_sharp),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ImageSlideshow(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2.2,
                  initialPage: 0,
                  indicatorColor: Colors.blue,
                  indicatorBackgroundColor: Colors.grey,
                  indicatorBottomPadding: 65,
                  autoPlayInterval: 10800000,
                  isLoop: true,
                  children: [
                    Image.asset('assets/images/imageSlideshow/home.png',
                        fit: BoxFit.cover),
                    Image.asset('assets/images/imageSlideshow/home1.png',
                        fit: BoxFit.cover),
                    Image.asset('assets/images/imageSlideshow/home2.png',
                        fit: BoxFit.cover),
                    Image.asset('assets/images/imageSlideshow/home.png',
                        fit: BoxFit.cover),
                    Image.asset('assets/images/imageSlideshow/home1.png',
                        fit: BoxFit.cover),
                    Image.asset('assets/images/imageSlideshow/home2.png',
                        fit: BoxFit.cover),
                  ],
                ),
                Positioned(
                  top: 170,
                  left: 15,
                  right: 10,
                  bottom: 0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                children: [
                                  SizedBox(
                                      child: Image.asset(
                                          'assets/images/room1.png')),
                                  SizedBox(width: 10),
                                  Text(
                                    'Room 1',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                children: [
                                  SizedBox(
                                      child: Image.asset(
                                          'assets/images/room2.png')),
                                  SizedBox(width: 10),
                                  Text(
                                    'Room 2',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                children: [
                                  SizedBox(
                                      child: Image.asset(
                                          'assets/images/room3.png')),
                                  SizedBox(width: 10),
                                  Text(
                                    'Room 3',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Opacity(
                        opacity: 0.6,
                        child: InkWell(
                          onTap: () => print("Image button pressed"),
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
                ),
                Container(
                  color: Colors.transparent,
                  child: TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.white,
                    indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    tabs: [
                      Tab(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: MediaQuery(
                            data: MediaQuery.of(context)
                                .copyWith(textScaler: TextScaler.linear(0.8)),
                            child: Text("ROOM 1",
                                maxLines: 1,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      Tab(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: MediaQuery(
                            data: MediaQuery.of(context)
                                .copyWith(textScaler: TextScaler.linear(0.8)),
                            child: Text("ROOM 2",
                                maxLines: 1,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      Tab(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: MediaQuery(
                            data: MediaQuery.of(context)
                                .copyWith(textScaler: TextScaler.linear(0.8)),
                            child: Text("ROOM 3",
                                maxLines: 1,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Room1Page(),
                  Room2Page(),
                  Room3Page(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
