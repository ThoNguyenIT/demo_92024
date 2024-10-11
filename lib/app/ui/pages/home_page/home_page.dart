import 'package:demo_92024/app/ui/pages/home_page/room1_page.dart';
import 'package:demo_92024/app/ui/pages/optionmenu_page/optionmenu_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import '../../../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextButton(
                    onPressed: () {
                      Get.to(() => const OptionmenuPage());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '설정',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.settings_applications_rounded),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
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
                Container(
                  color: Colors.transparent,
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
                    tabs: [
                      Tab(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Text(
                            "ROOM 1",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Tab(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Text(
                            "ROOM 2",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Tab(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Text(
                            "ROOM 3",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  Room1Page(),
                  Center(child: Text('Content for Room2')),
                  Center(child: Text('Content for Room3')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
