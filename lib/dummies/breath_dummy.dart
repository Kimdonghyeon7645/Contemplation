import 'package:contemplation/models/breath.dart';

final List<Breath> breathList = [
  Breath.fromMap({
    "name": "10분간 2~3초 호흡",
    "breathSeconds": [
      [2, 75],  // 5분
      [3, 50],  // 5분
    ],
  }),
  Breath.fromMap({
    "name": "하루 10분 3초 호흡",
    "breathSeconds": [
      [3, 100],
    ],
  }),
  Breath.fromMap({
    "name": "하루 10분 4초 호흡",
    "breathSeconds": [
      [4, 75],
    ],
  }),
  Breath.fromMap({
    "name": "기초 10분 5초 호흡",
    "breathSeconds": [
      [5, 60],
    ],
  }),
  Breath.fromMap({
    "name": "10분간 3초부터 5초 호흡",
    "breathSeconds": [
      [3, 30],  // 3분
      [4, 30],  // 4분
      [5, 18],  // 3분
    ],
  }),
  Breath.fromMap({
    "name": "기초 10분 6초 호흡",
    "breathSeconds": [
      [6, 50],
    ],
  }),
  Breath.fromMap({
    "name": "기초 15분 6초 호흡",
    "breathSeconds": [
      [6, 75],
    ],
  }),
  Breath.fromMap({
    "name": "기초 20분 6초 호흡",
    "breathSeconds": [
      [6, 100],
    ],
  }),
  Breath.fromMap({
    "name": "10분 7초 호흡",
    "breathSeconds": [
      [7, 43],
    ],
  }),
  Breath.fromMap({
    "name": "10분 8초 호흡",
    "breathSeconds": [
      [8, 38],
    ],
  }),
];
