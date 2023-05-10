import 'package:freezed_annotation/freezed_annotation.dart';

part 'trek.freezed.dart';

part 'trek.g.dart';

@freezed
class Trek with _$Trek {
  const factory Trek({
    required String title,
    required String thumbnail,
  }) = _Trek;

  factory Trek.fromJson(Map<String, dynamic> json) => _$TrekFromJson(json);
}
