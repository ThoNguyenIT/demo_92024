import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../data/models/raw_data.dart';

class SparkController extends GetxController {
  final RxList<SparkData> sparkData = RxList<SparkData>();

  @override
  void onInit() {
    super.onInit();
    loadSmokeData();
  }

  void loadSmokeData() async {
    final jsonString =
        await rootBundle.loadString('assets/mockdata/MOCK_DATA.json');
    final jsonResponse = json.decode(jsonString) as List;
    sparkData.value = jsonResponse
        .map((data) => SparkData.fromJson(data as Map<String, dynamic>))
        .toList();
  }
}
