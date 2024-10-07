import 'package:demo_92024/app/ui/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../controllers/spark_controller.dart';

class SparkPage extends GetView<SparkController> {
  const SparkPage({super.key});

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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                /* height: MediaQuery.of(context).size.width * 4, */
                width: MediaQuery.of(context).size.width * 3,
                child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(
                    interval: 1,
                    labelRotation: -45,
                    labelIntersectAction: AxisLabelIntersectAction.multipleRows,
                  ),
                  primaryYAxis: NumericAxis(
                    maximum: 1,
                    minimum: 0,
                    interval: 1,
                    isVisible: false,
                  ),
                  zoomPanBehavior: ZoomPanBehavior(
                    enablePanning: true,
                    enablePinching: true,
                    zoomMode: ZoomMode.x,
                  ),
                  series: <ColumnSeries<Data, String>>[
                    ColumnSeries<Data, String>(
                      spacing: 0,
                      width: 1,
                      xValueMapper: (Data data, _) => data.time,
                      yValueMapper: (Data data, _) => 1,
                      pointColorMapper: (Data data, _) =>
                          data.on ? Colors.red : Colors.blue,
                      dataSource: <Data>[
                        Data('00h00', false),
                        Data('00h01', false),
                        Data('00h02', false),
                        Data('00h03', false),
                        Data('00h04', false),
                        Data('00h05', false),
                        Data('00h06', false),
                        Data('00h07', false),
                        Data('00h08', false),
                        Data('00h09', false),
                        Data('00h10', false),
                        Data('00h11', false),
                        Data('00h12', false),
                        Data('00h13', false),
                        Data('00h14', false),
                        Data('00h15', false),
                        Data('00h16', true),
                        Data('00h17', true),
                        Data('00h18', true),
                        Data('00h19', true),
                        Data('00h20', true),
                        Data('00h21', true),
                        Data('00h22', true),
                        Data('00h23', true),
                        Data('00h24', true),
                        Data('00h25', true),
                        Data('00h26', true),
                        Data('00h27', true),
                        Data('00h28', true),
                        Data('00h29', true),
                        Data('00h30', true),
                      ],
                    ),
                  ],
                ),
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
}

class Data {
  Data(this.time, this.on);
  final String time;
  final bool on;
}
