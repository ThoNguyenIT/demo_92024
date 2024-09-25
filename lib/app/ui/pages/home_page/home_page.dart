import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import '../../../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Cho phép mở rộng body phía sau AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // Bỏ shadow dưới AppBar
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.only(top: 50),
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 70),
                    child: Text(
                      '설정',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(
                            'assets/icons/1.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '수동 조작 모드',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Obx(
                      () => Switch(
                        value: controller.isSwitched.value,
                        onChanged: (bool newValue) {
                          controller.toogleSwitch(newValue);
                          print("Switch button changed");
                        }, //TODO: chế độ thủ công
                        activeColor: Colors.blue,
                        inactiveThumbColor: Colors.grey,
                        inactiveTrackColor: Colors.grey[300],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(
                            'assets/icons/2.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '선박 이름 변경',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 80),
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_right_sharp,
                            size: 40,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            print("button 2 pressed"); //TODO: nút 2
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(
                            'assets/icons/3.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '방 이름 변경',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 100),
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_right_sharp,
                            size: 40,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            print("button 3 pressed"); //TODO: nút 3
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(
                            'assets/icons/4.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '날씨 위치 변경',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 80),
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_right_sharp,
                            size: 40,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            print("button 4 pressed"); //TODO: nút 4
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(
                            'assets/icons/5.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '센서 리스트 변경',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 60),
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_right_sharp,
                            size: 40,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            print("button 5 pressed"); //TODO: nút 5
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(
                            'assets/icons/6.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '선박 추가',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 120),
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_right_sharp,
                            size: 40,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            print("button 6 pressed"); //TODO: nút 6
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
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
                top: MediaQuery.of(context).padding.top,
                left: 10,
                child: IconButton(
                  icon: const Icon(Icons.menu, color: Colors.black, size: 40),
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 120,
                left: 25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // TODO: set cứng
                    Opacity(
                      opacity: 0.5,
                      child: Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/circle.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Text(
                            "성남호",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
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
                              fontSize: 20,
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
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
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
          // Bottom section
          Expanded(
            child: Container(
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Bottom',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
