class Breath {
  final List<List<int>> breathSeconds;
  final String name;

  Breath.fromMap(Map<String, dynamic> map)
      : name = map["name"],
        breathSeconds = map["breathSeconds"];
}