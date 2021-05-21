import 'package:contemplation/models/meditation_group.dart';

MeditationGroupData meditationGroup = MeditationGroupData.fromMap({
  "title": "자연소리와 함께하는 명상",
  "imageUrl": "https://cdn.mindgil.com/news/photo/201909/68313_1613_0923.jpg",
  "description":
      "자연은 한자로 스스로 그러하다라는 뜻을 의미합니다. 무위하게 존재하는 자연의 소리를 따라 명상하는 스스로도 무위의 시간을 가져봅시다.",
  "meditations": [
    MeditationGroupTileData.fromMap({
      "title": "새소리 명상",
      "second": 125,
      "isCompleted": false,
    }),
    MeditationGroupTileData.fromMap({
      "title": "빗소리 명상",
      "second": 341,
      "isCompleted": false,
    }),
    MeditationGroupTileData.fromMap({
      "title": "파도소리 명상",
      "second": 223,
      "isCompleted": false,
    }),
    MeditationGroupTileData.fromMap({
      "title": "풀벌래소리 명상",
      "second": 303,
      "isCompleted": false,
    }),
  ],
});
