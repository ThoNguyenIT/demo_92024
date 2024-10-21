import 'dart:convert';
import 'package:getx_flutter_template/app/data/models/raw_data.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SmokeController extends GetxController {
  final RxList<SmokeData> smokeData = RxList<SmokeData>();

  @override
  void onInit() {
    super.onInit();
    loadSmokeData();
  }

  void loadSmokeData() async {
    final jsonString =
        await rootBundle.loadString('assets/mockdata/MOCK_DATA.json');
    final jsonResponse = json.decode(jsonString) as List;
    smokeData.value = jsonResponse
        .map((data) => SmokeData.fromJson(data as Map<String, dynamic>))
        .toList();
  }
}
