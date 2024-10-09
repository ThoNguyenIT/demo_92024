import 'package:demo_92024/app/controllers/smoke_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:math';
import 'package:demo_92024/app/ui/pages/home_page/home_page.dart';

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
            SizedBox(
              width: double.infinity,
              child: SfCartesianChart(
                //enableAxisAnimation: true,
                primaryXAxis: CategoryAxis(
                  interval: 1,
                  labelIntersectAction: AxisLabelIntersectAction.multipleRows,
                ),
                primaryYAxis: NumericAxis(
                  maximum: 0.1,
                  minimum: 0,
                  interval: 0.1,
                  isVisible: false,
                  autoScrollingMode: AutoScrollingMode.end,
                ),
                zoomPanBehavior: ZoomPanBehavior(
                  //maximumZoomLevel: 0.1,
                  enablePanning: true,
                  enablePinching: true,
                  zoomMode: ZoomMode.x,
                ),
                series: <ColumnSeries<SmokeData, String>>[
                  ColumnSeries<SmokeData, String>(
                    spacing: 0,
                    width: 1,
                    xValueMapper: (SmokeData data, _) =>
                        '${data.time.hour.toString().padLeft(2, '0')}h${data.time.minute.toString().padLeft(2, '0')}',
                    yValueMapper: (SmokeData data, _) => 0.1,
                    pointColorMapper: (SmokeData data, _) =>
                        data.on ? Colors.red : Colors.blue,
                    dataSource: generateData(),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<SmokeData> generateData() {
    var rng = Random();
    List<SmokeData> allData = [];
    for (int hour = 0; hour < 24; hour++) {
      for (int minute = 0; minute < 60; minute++) {
        allData
            .add(SmokeData(DateTime(2023, 8, 7, hour, minute), rng.nextBool()));
      }
    }
    return allData;
  }
}

class SmokeData {
  SmokeData(this.time, this.on);
  final DateTime time;
  final bool on;
}
