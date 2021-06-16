class MeditationGroupData {
  final String title, description, imageUrl;
  final List<MeditationGroupTileData> meditations;

  MeditationGroupData.fromMap(Map<String, dynamic> map)
      : title = map["title"],
        imageUrl = map["imageUrl"],
        description = map["description"],
        meditations = map["meditations"];
}

class MeditationGroupTileData {
  final String title, groupName, imageUrl;
  final int second;
  final bool isCompleted;

  MeditationGroupTileData.fromMap(Map<String, dynamic> map)
      : title = map["title"],
        groupName = map["groupName"],
        imageUrl = map["imageUrl"],
        second = map["second"],
        isCompleted = map["isCompleted"];
}
