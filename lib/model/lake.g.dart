// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lake.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Lake _$$_LakeFromJson(Map<String, dynamic> json) => _$_Lake(
      bannerTitle: json['bannerTitle'] as String,
      bannerImages: (json['bannerImages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      rating: (json['rating'] as num).toDouble(),
      description: json['description'] as String,
      details:
          (json['details'] as List<dynamic>).map((e) => e as String).toList(),
      popularTreks: (json['popularTreks'] as List<dynamic>)
          .map((e) => Trek.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LakeToJson(_$_Lake instance) => <String, dynamic>{
      'bannerTitle': instance.bannerTitle,
      'bannerImages': instance.bannerImages,
      'rating': instance.rating,
      'description': instance.description,
      'details': instance.details,
      'popularTreks': instance.popularTreks.map((e) => e.toJson()).toList(),
    };
