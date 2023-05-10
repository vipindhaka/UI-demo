import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/lake.dart';

final repositoryProvider = Provider((ref) {
  return Repository();
});

final getLakeProvider = FutureProvider((ref) async {
  final repository = ref.read(repositoryProvider);
  return repository.getLake();
});

class Repository {
  Future<Lake?> getLake() async {
    try {
      final jsonData = await rootBundle.loadString('assets/data.json');
      final lakeData = json.decode(jsonData) as Map<String, dynamic>;
      final Lake lake = Lake.fromJson(lakeData);
      return lake;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
