import './trek.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lake.freezed.dart';

part 'lake.g.dart';

@freezed
class Lake with _$Lake {
  @JsonSerializable(explicitToJson: true)
  const factory Lake({
    required String bannerTitle,
    @Default(<String>[]) List<String> bannerImages,
    required double rating,
    required String description,
    required List<String> details,
    required List<Trek> popularTreks,
  }) = _Lake;

  factory Lake.fromJson(Map<String, dynamic> json) => _$LakeFromJson(json);
}
