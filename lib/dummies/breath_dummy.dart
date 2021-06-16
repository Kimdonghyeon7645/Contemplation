import 'package:contemplation/models/breath.dart';

final List<Breath> breathList = [
  Breath.fromMap({
    "name": "하루 10분 간단 호흡",
    "breathSeconds": [
      [2, 75],  // 5분
      [3, 50],  // 5분
    ],
  }),
  Breath.fromMap({
    "name": "3초유지 간단 호흡",
    "breathSeconds": [
      [3, 100],
    ],
  }),
  Breath.fromMap({
    "name": "4초유지 간단 호흡",
    "breathSeconds": [
      [4, 75],
    ],
  }),
  Breath.fromMap({
    "name": "5초유지 기초 호흡",
    "breathSeconds": [
      [5, 60],
    ],
  }),
  Breath.fromMap({
    "name": "하루 10분 기초 호흡",
    "breathSeconds": [
      [3, 30],  // 3분
      [4, 30],  // 4분
      [5, 18],  // 3분
    ],
  }),
  Breath.fromMap({
    "name": "6초대 호흡",
    "breathSeconds": [
      [6, 50],
    ],
  }),
  Breath.fromMap({
    "name": "6초대 길게 호흡",
    "breathSeconds": [
      [6, 75],
    ],
  }),
  Breath.fromMap({
    "name": "6초대 더길게 호흡",
    "breathSeconds": [
      [6, 100],
    ],
  }),
  Breath.fromMap({
    "name": "7초대 기초 호흡",
    "breathSeconds": [
      [7, 43],
    ],
  }),
  Breath.fromMap({
    "name": "8초대 기초 호흡",
    "breathSeconds": [
      [8, 38],
    ],
  }),
  Breath.fromMap({
    "name": "10초대 태식 연습 호흡",
    "breathSeconds": [
      [10, 30],
    ],
  }),
];
