import 'package:demo_92024/app/ui/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../controllers/smoke_controller.dart';

class SmokePage extends GetView<SmokeController> {
  const SmokePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.offAll(() => const HomePage());
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SfCartesianChart(
              primaryXAxis: const CategoryAxis(),
              series: <LineSeries<Data, String>>[
                LineSeries<Data, String>(
                  dataSource: <Data>[
                    Data('1', 0),
                    Data('2', 0),
                    Data('3', 0),
                    Data('4', 1),
                    Data('5', 1),
                    Data('6', 0),
                    Data('7', 1),
                    Data('8', 0),
                    Data('9', 0),
                    Data('10', 1),
                    Data('11', 0),
                    Data('12', 1),
                  ],
                  xValueMapper: (Data data, _) => data.time,
                  yValueMapper: (Data data, _) => data.onoff,
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 3,
                        color: Colors.blue,
                      ),
                    ),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "2023.08.07",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  for (var i = 0; i < 100; i++)
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "2023.08.06",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
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

class Data {
  Data(this.time, this.onoff);
  final String time;
  final double onoff;
}
