class LevelData {
  bool isActive;
  int level;
  LevelData({required this.isActive, required this.level});

  String get imagePath =>
      'assets/images/case${level}_${isActive ? "active" : "inactive"}.png';
}
