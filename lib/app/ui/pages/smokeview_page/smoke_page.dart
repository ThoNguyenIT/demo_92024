import 'package:demo_92024/app/controllers/smoke_controller.dart';
import 'package:demo_92024/app/data/models/raw_data.dart';
import 'package:demo_92024/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SmokePage extends GetView<SmokeController> {
  const SmokePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SmokeController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.offAllNamed(AppRoutes.home);
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Obx(
                () => controller.smokeData.isNotEmpty
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
                        series: <ColumnSeries<SmokeData, String>>[
                          ColumnSeries<SmokeData, String>(
                            dataSource: controller.smokeData,
                            spacing: 0,
                            width: 1,
                            xValueMapper: (SmokeData data, _) =>
                                '${data.time.hour.toString().padLeft(2, '0')}:${data.time.minute.toString().padLeft(2, '0')}',
                            yValueMapper: (SmokeData data, _) => 1,
                            pointColorMapper: (SmokeData data, _) =>
                                data.on ? Colors.blue[800] : Colors.red[800],
                          ),
                        ],
                      )
                    : Center(child: CircularProgressIndicator()),
              ),
            ),
            Expanded(
              flex: 3,
              child: Scrollbar(
                interactive: false,
                radius: Radius.circular(90),
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
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "2024.10.10",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                        child: Padding(
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
            ),
          ],
        ),
      ),
    );
  }
}
