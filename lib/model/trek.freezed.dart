// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trek.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Trek _$TrekFromJson(Map<String, dynamic> json) {
  return _Trek.fromJson(json);
}

/// @nodoc
mixin _$Trek {
  String get title => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrekCopyWith<Trek> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrekCopyWith<$Res> {
  factory $TrekCopyWith(Trek value, $Res Function(Trek) then) =
      _$TrekCopyWithImpl<$Res, Trek>;
  @useResult
  $Res call({String title, String thumbnail});
}

/// @nodoc
class _$TrekCopyWithImpl<$Res, $Val extends Trek>
    implements $TrekCopyWith<$Res> {
  _$TrekCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? thumbnail = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrekCopyWith<$Res> implements $TrekCopyWith<$Res> {
  factory _$$_TrekCopyWith(_$_Trek value, $Res Function(_$_Trek) then) =
      __$$_TrekCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String thumbnail});
}

/// @nodoc
class __$$_TrekCopyWithImpl<$Res> extends _$TrekCopyWithImpl<$Res, _$_Trek>
    implements _$$_TrekCopyWith<$Res> {
  __$$_TrekCopyWithImpl(_$_Trek _value, $Res Function(_$_Trek) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? thumbnail = null,
  }) {
    return _then(_$_Trek(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Trek implements _Trek {
  const _$_Trek({required this.title, required this.thumbnail});

  factory _$_Trek.fromJson(Map<String, dynamic> json) => _$$_TrekFromJson(json);

  @override
  final String title;
  @override
  final String thumbnail;

  @override
  String toString() {
    return 'Trek(title: $title, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Trek &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrekCopyWith<_$_Trek> get copyWith =>
      __$$_TrekCopyWithImpl<_$_Trek>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrekToJson(
      this,
    );
  }
}

abstract class _Trek implements Trek {
  const factory _Trek(
      {required final String title, required final String thumbnail}) = _$_Trek;

  factory _Trek.fromJson(Map<String, dynamic> json) = _$_Trek.fromJson;

  @override
  String get title;
  @override
  String get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_TrekCopyWith<_$_Trek> get copyWith => throw _privateConstructorUsedError;
}
