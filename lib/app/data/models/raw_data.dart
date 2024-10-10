class SmokeData {
  final DateTime time;
  final bool on;

  SmokeData({required this.time, required this.on});

  factory SmokeData.fromJson(Map<String, dynamic> json) {
    final date = DateTime.parse(json['date']);
    final hour = json['hour'];
    final minute = json['minute'];
    final second = json['second'];
    final status = json['status'] == 1;

    return SmokeData(
      time: DateTime(date.year, date.month, date.day, hour, minute, second),
      on: status,
    );
  }
}
