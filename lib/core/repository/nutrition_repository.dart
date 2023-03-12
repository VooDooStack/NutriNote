import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:nutrinote/core/helpers/endpoint.dart';
import 'package:nutrinote/core/models/nutrition_log_model.dart';

class NutritionRepository {
  final Endpoints endpoints = Endpoints();

  Future<List<NutritionLog>> getNutritionLog() async {
    try {
      final response = await endpoints.get('nutrition', authenticate: true);
      return response.data.map<NutritionLog>((json) => NutritionLog.fromJson(json)).toList();
    } catch (e) {
      if (kDebugMode) log(e.toString());
      rethrow;
    }
  }
}
