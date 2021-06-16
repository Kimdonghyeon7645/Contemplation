import 'package:contemplation/models/meditation_group.dart';

MeditationGroupData meditationGroup = MeditationGroupData.fromMap({
  "title": "자연소리와 함께하는 명상",
  "imageUrl": "images/명상06.jpg",
  "description":
      "자연은 한자로 스스로 그러하다라는 뜻을 의미합니다. 무위하게 존재하는 자연의 소리를 따라 명상하는 스스로도 무위의 시간을 가져봅시다.",
  "meditations": [
    MeditationGroupTileData.fromMap({
      "title": "새소리 명상",
      "groupName": "자연소리와 함께하는 명상",
      "imageUrl": "http://www.newsje.com/news/photo/201805/108796_119195_4038.png",
      "second": 125,
      "isCompleted": false,
    }),
    MeditationGroupTileData.fromMap({
      "title": "빗소리 명상",
      "groupName": "자연소리와 함께하는 명상",
      "imageUrl": "https://scontent-ssn1-1.xx.fbcdn.net/v/t31.18172-8/10548890_1512438715659478_3056134313461289393_o.jpg?_nc_cat=108&ccb=1-3&_nc_sid=730e14&_nc_ohc=PNcd5YR0tVkAX8GGimp&_nc_ht=scontent-ssn1-1.xx&oh=b00270a0b434e9d498823069a937ed54&oe=60EF8907",
      "second": 341,
      "isCompleted": false,
    }),
    MeditationGroupTileData.fromMap({
      "title": "파도소리 명상",
      "groupName": "자연소리와 함께하는 명상",
      "imageUrl": "https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F998B8D425C5E41C016",
      "second": 223,
      "isCompleted": false,
    }),
    MeditationGroupTileData.fromMap({
      "title": "풀벌래소리 명상",
      "groupName": "자연소리와 함께하는 명상",
      "imageUrl": "https://p0.pikist.com/photos/159/65/field-sky-star-night-landscape-nature-rural-summer-scenic.jpg",
      "second": 303,
      "isCompleted": false,
    }),
  ],
});
