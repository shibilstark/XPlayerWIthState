// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() Initial,
    required TResult Function(String videoPath) getVideoInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? Initial,
    TResult Function(String videoPath)? getVideoInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? Initial,
    TResult Function(String videoPath)? getVideoInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) Initial,
    required TResult Function(GetVideoInfo value) getVideoInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? Initial,
    TResult Function(GetVideoInfo value)? getVideoInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? Initial,
    TResult Function(GetVideoInfo value)? getVideoInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoInfoEventCopyWith<$Res> {
  factory $VideoInfoEventCopyWith(
          VideoInfoEvent value, $Res Function(VideoInfoEvent) then) =
      _$VideoInfoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VideoInfoEventCopyWithImpl<$Res>
    implements $VideoInfoEventCopyWith<$Res> {
  _$VideoInfoEventCopyWithImpl(this._value, this._then);

  final VideoInfoEvent _value;
  // ignore: unused_field
  final $Res Function(VideoInfoEvent) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$VideoInfoEventCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'VideoInfoEvent.Initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() Initial,
    required TResult Function(String videoPath) getVideoInfo,
  }) {
    return Initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? Initial,
    TResult Function(String videoPath)? getVideoInfo,
  }) {
    return Initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? Initial,
    TResult Function(String videoPath)? getVideoInfo,
    required TResult orElse(),
  }) {
    if (Initial != null) {
      return Initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) Initial,
    required TResult Function(GetVideoInfo value) getVideoInfo,
  }) {
    return Initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? Initial,
    TResult Function(GetVideoInfo value)? getVideoInfo,
  }) {
    return Initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? Initial,
    TResult Function(GetVideoInfo value)? getVideoInfo,
    required TResult orElse(),
  }) {
    if (Initial != null) {
      return Initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements VideoInfoEvent {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$GetVideoInfoCopyWith<$Res> {
  factory _$$GetVideoInfoCopyWith(
          _$GetVideoInfo value, $Res Function(_$GetVideoInfo) then) =
      __$$GetVideoInfoCopyWithImpl<$Res>;
  $Res call({String videoPath});
}

/// @nodoc
class __$$GetVideoInfoCopyWithImpl<$Res>
    extends _$VideoInfoEventCopyWithImpl<$Res>
    implements _$$GetVideoInfoCopyWith<$Res> {
  __$$GetVideoInfoCopyWithImpl(
      _$GetVideoInfo _value, $Res Function(_$GetVideoInfo) _then)
      : super(_value, (v) => _then(v as _$GetVideoInfo));

  @override
  _$GetVideoInfo get _value => super._value as _$GetVideoInfo;

  @override
  $Res call({
    Object? videoPath = freezed,
  }) {
    return _then(_$GetVideoInfo(
      videoPath: videoPath == freezed
          ? _value.videoPath
          : videoPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetVideoInfo implements GetVideoInfo {
  const _$GetVideoInfo({required this.videoPath});

  @override
  final String videoPath;

  @override
  String toString() {
    return 'VideoInfoEvent.getVideoInfo(videoPath: $videoPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetVideoInfo &&
            const DeepCollectionEquality().equals(other.videoPath, videoPath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(videoPath));

  @JsonKey(ignore: true)
  @override
  _$$GetVideoInfoCopyWith<_$GetVideoInfo> get copyWith =>
      __$$GetVideoInfoCopyWithImpl<_$GetVideoInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() Initial,
    required TResult Function(String videoPath) getVideoInfo,
  }) {
    return getVideoInfo(videoPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? Initial,
    TResult Function(String videoPath)? getVideoInfo,
  }) {
    return getVideoInfo?.call(videoPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? Initial,
    TResult Function(String videoPath)? getVideoInfo,
    required TResult orElse(),
  }) {
    if (getVideoInfo != null) {
      return getVideoInfo(videoPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) Initial,
    required TResult Function(GetVideoInfo value) getVideoInfo,
  }) {
    return getVideoInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? Initial,
    TResult Function(GetVideoInfo value)? getVideoInfo,
  }) {
    return getVideoInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? Initial,
    TResult Function(GetVideoInfo value)? getVideoInfo,
    required TResult orElse(),
  }) {
    if (getVideoInfo != null) {
      return getVideoInfo(this);
    }
    return orElse();
  }
}

abstract class GetVideoInfo implements VideoInfoEvent {
  const factory GetVideoInfo({required final String videoPath}) =
      _$GetVideoInfo;

  String get videoPath => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GetVideoInfoCopyWith<_$GetVideoInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VideoInfoState {
  bool get isLoading => throw _privateConstructorUsedError;
  VideoData? get info => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoInfoStateCopyWith<VideoInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoInfoStateCopyWith<$Res> {
  factory $VideoInfoStateCopyWith(
          VideoInfoState value, $Res Function(VideoInfoState) then) =
      _$VideoInfoStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, VideoData? info});
}

/// @nodoc
class _$VideoInfoStateCopyWithImpl<$Res>
    implements $VideoInfoStateCopyWith<$Res> {
  _$VideoInfoStateCopyWithImpl(this._value, this._then);

  final VideoInfoState _value;
  // ignore: unused_field
  final $Res Function(VideoInfoState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as VideoData?,
    ));
  }
}

/// @nodoc
abstract class _$$_VideoInfoStateCopyWith<$Res>
    implements $VideoInfoStateCopyWith<$Res> {
  factory _$$_VideoInfoStateCopyWith(
          _$_VideoInfoState value, $Res Function(_$_VideoInfoState) then) =
      __$$_VideoInfoStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, VideoData? info});
}

/// @nodoc
class __$$_VideoInfoStateCopyWithImpl<$Res>
    extends _$VideoInfoStateCopyWithImpl<$Res>
    implements _$$_VideoInfoStateCopyWith<$Res> {
  __$$_VideoInfoStateCopyWithImpl(
      _$_VideoInfoState _value, $Res Function(_$_VideoInfoState) _then)
      : super(_value, (v) => _then(v as _$_VideoInfoState));

  @override
  _$_VideoInfoState get _value => super._value as _$_VideoInfoState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? info = freezed,
  }) {
    return _then(_$_VideoInfoState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as VideoData?,
    ));
  }
}

/// @nodoc

class _$_VideoInfoState implements _VideoInfoState {
  const _$_VideoInfoState({required this.isLoading, required this.info});

  @override
  final bool isLoading;
  @override
  final VideoData? info;

  @override
  String toString() {
    return 'VideoInfoState(isLoading: $isLoading, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoInfoState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  _$$_VideoInfoStateCopyWith<_$_VideoInfoState> get copyWith =>
      __$$_VideoInfoStateCopyWithImpl<_$_VideoInfoState>(this, _$identity);
}

abstract class _VideoInfoState implements VideoInfoState {
  const factory _VideoInfoState(
      {required final bool isLoading,
      required final VideoData? info}) = _$_VideoInfoState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  VideoData? get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VideoInfoStateCopyWith<_$_VideoInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}
