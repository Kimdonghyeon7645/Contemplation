class MeditationTile {
  final String name, imageUrl;
  final int length;

  MeditationTile(this.name, this.imageUrl, this.length);

  MeditationTile.fromMap(Map<String, dynamic> map)
      : name = map["name"],
        imageUrl = map["imageUrl"],
        length = map["length"];
}
