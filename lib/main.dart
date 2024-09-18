import 'package:flutter/material.dart';
import 'package:get/get.dart';

// void main() {
//   runApp(const MainApp());
// }
// class MainApp extends StatelessWidget {
//   const MainApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text('Hello World!'),
//         ),
//       ),
//     );
//   }
// }

void main() => runApp(GetMaterialApp(home: Home()));

class Counter extends GetxController {
  RxInt count = 0.obs;

  void add() {
    count++;
  }
}

// ignore: use_key_in_widget_constructors
class Home extends StatelessWidget {
  final counter = Get.put(Counter());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Demo Đếm'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  '${counter.count}',
                  // ignore: prefer_const_constructors
                  style: TextStyle(fontSize: 200, color: Colors.black),
                )),
            ElevatedButton(
              onPressed: () {
                Get.to(Trang2());
              },
              // ignore: prefer_const_constructors
              child: Text('Sang trang'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.add();
        },
        // ignore: prefer_const_constructors
        child: Icon(Icons.add),
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class Trang2 extends StatelessWidget {
  final Counter counter2 = Get.find();
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Demo Đếm'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(
                '${counter2.count}',
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 200, color: Colors.black),
              ))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter2.add();
        },
        // ignore: prefer_const_constructors
        child: Icon(Icons.add),
      ),
    );
  }
}
