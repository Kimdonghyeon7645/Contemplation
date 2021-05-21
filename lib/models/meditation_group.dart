class MeditationGroup {
  final String title, description;
  final List<MeditationGroupTile> meditations;

  MeditationGroup.fromMap(Map<String, dynamic> map)
      : title = map["title"],
        description = map["description"],
        meditations = map["meditations"];
}

class MeditationGroupTile {
  final String title;
  final int second;
  final bool isCompleted;

  MeditationGroupTile.fromMap(Map<String, dynamic> map)
      : title = map["title"],
        second = map["second"],
        isCompleted = map["isCompleted"];
}
