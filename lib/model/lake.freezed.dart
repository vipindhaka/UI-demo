// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lake.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Lake _$LakeFromJson(Map<String, dynamic> json) {
  return _Lake.fromJson(json);
}

/// @nodoc
mixin _$Lake {
  String get bannerTitle => throw _privateConstructorUsedError;
  List<String> get bannerImages => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get details => throw _privateConstructorUsedError;
  List<Trek> get popularTreks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LakeCopyWith<Lake> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LakeCopyWith<$Res> {
  factory $LakeCopyWith(Lake value, $Res Function(Lake) then) =
      _$LakeCopyWithImpl<$Res, Lake>;
  @useResult
  $Res call(
      {String bannerTitle,
      List<String> bannerImages,
      double rating,
      String description,
      List<String> details,
      List<Trek> popularTreks});
}

/// @nodoc
class _$LakeCopyWithImpl<$Res, $Val extends Lake>
    implements $LakeCopyWith<$Res> {
  _$LakeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannerTitle = null,
    Object? bannerImages = null,
    Object? rating = null,
    Object? description = null,
    Object? details = null,
    Object? popularTreks = null,
  }) {
    return _then(_value.copyWith(
      bannerTitle: null == bannerTitle
          ? _value.bannerTitle
          : bannerTitle // ignore: cast_nullable_to_non_nullable
              as String,
      bannerImages: null == bannerImages
          ? _value.bannerImages
          : bannerImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<String>,
      popularTreks: null == popularTreks
          ? _value.popularTreks
          : popularTreks // ignore: cast_nullable_to_non_nullable
              as List<Trek>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LakeCopyWith<$Res> implements $LakeCopyWith<$Res> {
  factory _$$_LakeCopyWith(_$_Lake value, $Res Function(_$_Lake) then) =
      __$$_LakeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bannerTitle,
      List<String> bannerImages,
      double rating,
      String description,
      List<String> details,
      List<Trek> popularTreks});
}

/// @nodoc
class __$$_LakeCopyWithImpl<$Res> extends _$LakeCopyWithImpl<$Res, _$_Lake>
    implements _$$_LakeCopyWith<$Res> {
  __$$_LakeCopyWithImpl(_$_Lake _value, $Res Function(_$_Lake) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannerTitle = null,
    Object? bannerImages = null,
    Object? rating = null,
    Object? description = null,
    Object? details = null,
    Object? popularTreks = null,
  }) {
    return _then(_$_Lake(
      bannerTitle: null == bannerTitle
          ? _value.bannerTitle
          : bannerTitle // ignore: cast_nullable_to_non_nullable
              as String,
      bannerImages: null == bannerImages
          ? _value._bannerImages
          : bannerImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<String>,
      popularTreks: null == popularTreks
          ? _value._popularTreks
          : popularTreks // ignore: cast_nullable_to_non_nullable
              as List<Trek>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Lake implements _Lake {
  const _$_Lake(
      {required this.bannerTitle,
      final List<String> bannerImages = const <String>[],
      required this.rating,
      required this.description,
      required final List<String> details,
      required final List<Trek> popularTreks})
      : _bannerImages = bannerImages,
        _details = details,
        _popularTreks = popularTreks;

  factory _$_Lake.fromJson(Map<String, dynamic> json) => _$$_LakeFromJson(json);

  @override
  final String bannerTitle;
  final List<String> _bannerImages;
  @override
  @JsonKey()
  List<String> get bannerImages {
    if (_bannerImages is EqualUnmodifiableListView) return _bannerImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bannerImages);
  }

  @override
  final double rating;
  @override
  final String description;
  final List<String> _details;
  @override
  List<String> get details {
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

  final List<Trek> _popularTreks;
  @override
  List<Trek> get popularTreks {
    if (_popularTreks is EqualUnmodifiableListView) return _popularTreks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularTreks);
  }

  @override
  String toString() {
    return 'Lake(bannerTitle: $bannerTitle, bannerImages: $bannerImages, rating: $rating, description: $description, details: $details, popularTreks: $popularTreks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Lake &&
            (identical(other.bannerTitle, bannerTitle) ||
                other.bannerTitle == bannerTitle) &&
            const DeepCollectionEquality()
                .equals(other._bannerImages, _bannerImages) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            const DeepCollectionEquality()
                .equals(other._popularTreks, _popularTreks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bannerTitle,
      const DeepCollectionEquality().hash(_bannerImages),
      rating,
      description,
      const DeepCollectionEquality().hash(_details),
      const DeepCollectionEquality().hash(_popularTreks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LakeCopyWith<_$_Lake> get copyWith =>
      __$$_LakeCopyWithImpl<_$_Lake>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LakeToJson(
      this,
    );
  }
}

abstract class _Lake implements Lake {
  const factory _Lake(
      {required final String bannerTitle,
      final List<String> bannerImages,
      required final double rating,
      required final String description,
      required final List<String> details,
      required final List<Trek> popularTreks}) = _$_Lake;

  factory _Lake.fromJson(Map<String, dynamic> json) = _$_Lake.fromJson;

  @override
  String get bannerTitle;
  @override
  List<String> get bannerImages;
  @override
  double get rating;
  @override
  String get description;
  @override
  List<String> get details;
  @override
  List<Trek> get popularTreks;
  @override
  @JsonKey(ignore: true)
  _$$_LakeCopyWith<_$_Lake> get copyWith => throw _privateConstructorUsedError;
}
