import 'package:flutter/material.dart';

class Room1Page extends StatefulWidget {
  const Room1Page({super.key});

  @override
  _Room1State createState() => _Room1State();
}

class _Room1State extends State<Room1Page> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Switch(
          value: isSwitched,
          onChanged: (value) {
            setState(() {
              isSwitched = value;
            });
          },
          activeColor: Colors.blue,
          inactiveThumbColor: Colors.grey,
          inactiveTrackColor: Colors.grey[300],
        ),
        const SizedBox(width: 10),
        Text(
          isSwitched ? 'Auto' : 'Manual',
          style: TextStyle(
            fontSize: 18,
            color: isSwitched ? Colors.blue : Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

/* Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        SfRadialGauge(
          axes: <RadialAxis>[
            RadialAxis(
              startAngle: 180, // Góc bắt đầu từ 180 độ
              endAngle: 360, // Kết thúc ở 0 độ (nửa trên)
              showLabels: true, // Ẩn các nhãn giá trị trục
              showTicks: false, // Ẩn các tick mark
              radiusFactor: 0.8, // Kích thước của gauge
              canScaleToFit: true,
              pointers: const <GaugePointer>[
                // Sử dụng TextPointer để hiển thị giá trị
                MarkerPointer(
                  value: 60, // Giá trị hiện tại (có thể thay đổi)
                  markerType: MarkerType.text,
                  text: '60', // Giá trị hiển thị dưới dạng văn bản
                  textStyle: GaugeTextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  offsetUnit: GaugeSizeUnit.factor,
                  markerOffset: -0.1, // Điều chỉnh vị trí văn bản
                ),
              ],
              ranges: <GaugeRange>[
                GaugeRange(
                  startValue: 0,
                  endValue: 25,
                  color: Colors.green,
                  startWidth: 20,
                  endWidth: 20,
                ),
                GaugeRange(
                  startValue: 25,
                  endValue: 50,
                  color: Colors.yellow,
                  startWidth: 20,
                  endWidth: 20,
                ),
                GaugeRange(
                  startValue: 50,
                  endValue: 75,
                  color: Colors.orange,
                  startWidth: 20,
                  endWidth: 20,
                ),
                GaugeRange(
                  startValue: 75,
                  endValue: 100,
                  color: Colors.black,
                  startWidth: 20,
                  endWidth: 20,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          "Room 1 Content",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    ); */
