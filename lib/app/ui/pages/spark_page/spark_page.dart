import 'package:demo_92024/app/data/models/raw_data.dart';
import 'package:demo_92024/app/ui/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../controllers/spark_controller.dart';

class SparkPage extends GetView<SparkController> {
  const SparkPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SparkController());
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
            Expanded(
              flex: 2,
              child: Obx(
                () => controller.sparkData.isNotEmpty
                    ? SfCartesianChart(
                        primaryXAxis: CategoryAxis(
                          isVisible: false,
                        ),
                        primaryYAxis: NumericAxis(
                          maximum: 1,
                          minimum: 0,
                          interval: 1,
                          isVisible: false,
                        ),
                        trackballBehavior: TrackballBehavior(
                          enable: true,
                          lineWidth: 4,
                          lineColor: Colors.amber,
                          shouldAlwaysShow: true,
                          activationMode: ActivationMode.singleTap,
                          tooltipDisplayMode:
                              TrackballDisplayMode.groupAllPoints,
                          tooltipSettings: InteractiveTooltip(
                            borderColor: Colors.amber,
                            borderWidth: 4,
                            format: 'Status: point.y',
                          ),
                        ),
                        series: <ColumnSeries<SparkData, String>>[
                          ColumnSeries<SparkData, String>(
                            dataSource: controller.sparkData,
                            spacing: 0,
                            width: 1,
                            xValueMapper: (SparkData data, _) =>
                                '${data.time.hour.toString().padLeft(2, '0')}:${data.time.minute.toString().padLeft(2, '0')}',
                            yValueMapper: (SparkData data, _) => 1,
                            pointColorMapper: (SparkData data, _) =>
                                data.on ? Colors.blue[800] : Colors.red[800],
                          ),
                        ],
                      )
                    : Center(child: const CircularProgressIndicator()),
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
                            "2024.10.10",
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
                          color: Colors.grey,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "2024.10.09",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
  Data(this.time, this.on);
  final String time;
  final bool on;
}
