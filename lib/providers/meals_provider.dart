/*
* Create by : Mochammad Faisal
* Create at : 2024-05-12 00:46:31
* Update at : 2024-05-12 00:46:42
*/

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/dummy_data.dart';

final mealsProvider = Provider((ref) {
  return dummyMeals;
});
