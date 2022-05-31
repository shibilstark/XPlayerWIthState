// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'playlists_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaylistsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPlayLists,
    required TResult Function(String folderName) addNewPlaylistFolder,
    required TResult Function(int playListIndex) deletePlayListFolder,
    required TResult Function(String videoPath, int playListIndex)
        addNewVidoeToPlayList,
    required TResult Function(int playListfolderIndex, int currentVideoIndex)
        deleteVideoFromPlaylist,
    required TResult Function() clearAllPlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllPlayLists,
    TResult Function(String folderName)? addNewPlaylistFolder,
    TResult Function(int playListIndex)? deletePlayListFolder,
    TResult Function(String videoPath, int playListIndex)?
        addNewVidoeToPlayList,
    TResult Function(int playListfolderIndex, int currentVideoIndex)?
        deleteVideoFromPlaylist,
    TResult Function()? clearAllPlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPlayLists,
    TResult Function(String folderName)? addNewPlaylistFolder,
    TResult Function(int playListIndex)? deletePlayListFolder,
    TResult Function(String videoPath, int playListIndex)?
        addNewVidoeToPlayList,
    TResult Function(int playListfolderIndex, int currentVideoIndex)?
        deleteVideoFromPlaylist,
    TResult Function()? clearAllPlaylist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllPlayLists value) getAllPlayLists,
    required TResult Function(AddNewPlaylistFolder value) addNewPlaylistFolder,
    required TResult Function(DeletePlayListFolder value) deletePlayListFolder,
    required TResult Function(AddNewVidoeToPlayList value)
        addNewVidoeToPlayList,
    required TResult Function(DeleteVideoFromPlaylist value)
        deleteVideoFromPlaylist,
    required TResult Function(clearAllPlaylist value) clearAllPlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllPlayLists value)? getAllPlayLists,
    TResult Function(AddNewPlaylistFolder value)? addNewPlaylistFolder,
    TResult Function(DeletePlayListFolder value)? deletePlayListFolder,
    TResult Function(AddNewVidoeToPlayList value)? addNewVidoeToPlayList,
    TResult Function(DeleteVideoFromPlaylist value)? deleteVideoFromPlaylist,
    TResult Function(clearAllPlaylist value)? clearAllPlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllPlayLists value)? getAllPlayLists,
    TResult Function(AddNewPlaylistFolder value)? addNewPlaylistFolder,
    TResult Function(DeletePlayListFolder value)? deletePlayListFolder,
    TResult Function(AddNewVidoeToPlayList value)? addNewVidoeToPlayList,
    TResult Function(DeleteVideoFromPlaylist value)? deleteVideoFromPlaylist,
    TResult Function(clearAllPlaylist value)? clearAllPlaylist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistsEventCopyWith<$Res> {
  factory $PlaylistsEventCopyWith(
          PlaylistsEvent value, $Res Function(PlaylistsEvent) then) =
      _$PlaylistsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlaylistsEventCopyWithImpl<$Res>
    implements $PlaylistsEventCopyWith<$Res> {
  _$PlaylistsEventCopyWithImpl(this._value, this._then);

  final PlaylistsEvent _value;
  // ignore: unused_field
  final $Res Function(PlaylistsEvent) _then;
}

/// @nodoc
abstract class _$$GetAllPlayListsCopyWith<$Res> {
  factory _$$GetAllPlayListsCopyWith(
          _$GetAllPlayLists value, $Res Function(_$GetAllPlayLists) then) =
      __$$GetAllPlayListsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllPlayListsCopyWithImpl<$Res>
    extends _$PlaylistsEventCopyWithImpl<$Res>
    implements _$$GetAllPlayListsCopyWith<$Res> {
  __$$GetAllPlayListsCopyWithImpl(
      _$GetAllPlayLists _value, $Res Function(_$GetAllPlayLists) _then)
      : super(_value, (v) => _then(v as _$GetAllPlayLists));

  @override
  _$GetAllPlayLists get _value => super._value as _$GetAllPlayLists;
}

/// @nodoc

class _$GetAllPlayLists implements GetAllPlayLists {
  const _$GetAllPlayLists();

  @override
  String toString() {
    return 'PlaylistsEvent.getAllPlayLists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllPlayLists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPlayLists,
    required TResult Function(String folderName) addNewPlaylistFolder,
    required TResult Function(int playListIndex) deletePlayListFolder,
    required TResult Function(String videoPath, int playListIndex)
        addNewVidoeToPlayList,
    required TResult Function(int playListfolderIndex, int currentVideoIndex)
        deleteVideoFromPlaylist,
    required TResult Function() clearAllPlaylist,
  }) {
    return getAllPlayLists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllPlayLists,
    TResult Function(String folderName)? addNewPlaylistFolder,
    TResult Function(int playListIndex)? deletePlayListFolder,
    TResult Function(String videoPath, int playListIndex)?
        addNewVidoeToPlayList,
    TResult Function(int playListfolderIndex, int currentVideoIndex)?
        deleteVideoFromPlaylist,
    TResult Function()? clearAllPlaylist,
  }) {
    return getAllPlayLists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPlayLists,
    TResult Function(String folderName)? addNewPlaylistFolder,
    TResult Function(int playListIndex)? deletePlayListFolder,
    TResult Function(String videoPath, int playListIndex)?
        addNewVidoeToPlayList,
    TResult Function(int playListfolderIndex, int currentVideoIndex)?
        deleteVideoFromPlaylist,
    TResult Function()? clearAllPlaylist,
    required TResult orElse(),
  }) {
    if (getAllPlayLists != null) {
      return getAllPlayLists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllPlayLists value) getAllPlayLists,
    required TResult Function(AddNewPlaylistFolder value) addNewPlaylistFolder,
    required TResult Function(DeletePlayListFolder value) deletePlayListFolder,
    required TResult Function(AddNewVidoeToPlayList value)
        addNewVidoeToPlayList,
    required TResult Function(DeleteVideoFromPlaylist value)
        deleteVideoFromPlaylist,
    required TResult Function(clearAllPlaylist value) clearAllPlaylist,
  }) {
    return getAllPlayLists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllPlayLists value)? getAllPlayLists,
    TResult Function(AddNewPlaylistFolder value)? addNewPlaylistFolder,
    TResult Function(DeletePlayListFolder value)? deletePlayListFolder,
    TResult Function(AddNewVidoeToPlayList value)? addNewVidoeToPlayList,
    TResult Function(DeleteVideoFromPlaylist value)? deleteVideoFromPlaylist,
    TResult Function(clearAllPlaylist value)? clearAllPlaylist,
  }) {
    return getAllPlayLists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllPlayLists value)? getAllPlayLists,
    TResult Function(AddNewPlaylistFolder value)? addNewPlaylistFolder,
    TResult Function(DeletePlayListFolder value)? deletePlayListFolder,
    TResult Function(AddNewVidoeToPlayList value)? addNewVidoeToPlayList,
    TResult Function(DeleteVideoFromPlaylist value)? deleteVideoFromPlaylist,
    TResult Function(clearAllPlaylist value)? clearAllPlaylist,
    required TResult orElse(),
  }) {
    if (getAllPlayLists != null) {
      return getAllPlayLists(this);
    }
    return orElse();
  }
}

abstract class GetAllPlayLists implements PlaylistsEvent {
  const factory GetAllPlayLists() = _$GetAllPlayLists;
}

/// @nodoc
abstract class _$$AddNewPlaylistFolderCopyWith<$Res> {
  factory _$$AddNewPlaylistFolderCopyWith(_$AddNewPlaylistFolder value,
          $Res Function(_$AddNewPlaylistFolder) then) =
      __$$AddNewPlaylistFolderCopyWithImpl<$Res>;
  $Res call({String folderName});
}

/// @nodoc
class __$$AddNewPlaylistFolderCopyWithImpl<$Res>
    extends _$PlaylistsEventCopyWithImpl<$Res>
    implements _$$AddNewPlaylistFolderCopyWith<$Res> {
  __$$AddNewPlaylistFolderCopyWithImpl(_$AddNewPlaylistFolder _value,
      $Res Function(_$AddNewPlaylistFolder) _then)
      : super(_value, (v) => _then(v as _$AddNewPlaylistFolder));

  @override
  _$AddNewPlaylistFolder get _value => super._value as _$AddNewPlaylistFolder;

  @override
  $Res call({
    Object? folderName = freezed,
  }) {
    return _then(_$AddNewPlaylistFolder(
      folderName: folderName == freezed
          ? _value.folderName
          : folderName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddNewPlaylistFolder implements AddNewPlaylistFolder {
  const _$AddNewPlaylistFolder({required this.folderName});

  @override
  final String folderName;

  @override
  String toString() {
    return 'PlaylistsEvent.addNewPlaylistFolder(folderName: $folderName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewPlaylistFolder &&
            const DeepCollectionEquality()
                .equals(other.folderName, folderName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(folderName));

  @JsonKey(ignore: true)
  @override
  _$$AddNewPlaylistFolderCopyWith<_$AddNewPlaylistFolder> get copyWith =>
      __$$AddNewPlaylistFolderCopyWithImpl<_$AddNewPlaylistFolder>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPlayLists,
    required TResult Function(String folderName) addNewPlaylistFolder,
    required TResult Function(int playListIndex) deletePlayListFolder,
    required TResult Function(String videoPath, int playListIndex)
        addNewVidoeToPlayList,
    required TResult Function(int playListfolderIndex, int currentVideoIndex)
        deleteVideoFromPlaylist,
    required TResult Function() clearAllPlaylist,
  }) {
    return addNewPlaylistFolder(folderName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllPlayLists,
    TResult Function(String folderName)? addNewPlaylistFolder,
    TResult Function(int playListIndex)? deletePlayListFolder,
    TResult Function(String videoPath, int playListIndex)?
        addNewVidoeToPlayList,
    TResult Function(int playListfolderIndex, int currentVideoIndex)?
        deleteVideoFromPlaylist,
    TResult Function()? clearAllPlaylist,
  }) {
    return addNewPlaylistFolder?.call(folderName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPlayLists,
    TResult Function(String folderName)? addNewPlaylistFolder,
    TResult Function(int playListIndex)? deletePlayListFolder,
    TResult Function(String videoPath, int playListIndex)?
        addNewVidoeToPlayList,
    TResult Function(int playListfolderIndex, int currentVideoIndex)?
        deleteVideoFromPlaylist,
    TResult Function()? clearAllPlaylist,
    required TResult orElse(),
  }) {
    if (addNewPlaylistFolder != null) {
      return addNewPlaylistFolder(folderName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllPlayLists value) getAllPlayLists,
    required TResult Function(AddNewPlaylistFolder value) addNewPlaylistFolder,
    required TResult Function(DeletePlayListFolder value) deletePlayListFolder,
    required TResult Function(AddNewVidoeToPlayList value)
        addNewVidoeToPlayList,
    required TResult Function(DeleteVideoFromPlaylist value)
        deleteVideoFromPlaylist,
    required TResult Function(clearAllPlaylist value) clearAllPlaylist,
  }) {
    return addNewPlaylistFolder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllPlayLists value)? getAllPlayLists,
    TResult Function(AddNewPlaylistFolder value)? addNewPlaylistFolder,
    TResult Function(DeletePlayListFolder value)? deletePlayListFolder,
    TResult Function(AddNewVidoeToPlayList value)? addNewVidoeToPlayList,
    TResult Function(DeleteVideoFromPlaylist value)? deleteVideoFromPlaylist,
    TResult Function(clearAllPlaylist value)? clearAllPlaylist,
  }) {
    return addNewPlaylistFolder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllPlayLists value)? getAllPlayLists,
    TResult Function(AddNewPlaylistFolder value)? addNewPlaylistFolder,
    TResult Function(DeletePlayListFolder value)? deletePlayListFolder,
    TResult Function(AddNewVidoeToPlayList value)? addNewVidoeToPlayList,
    TResult Function(DeleteVideoFromPlaylist value)? deleteVideoFromPlaylist,
    TResult Function(clearAllPlaylist value)? clearAllPlaylist,
    required TResult orElse(),
  }) {
    if (addNewPlaylistFolder != null) {
      return addNewPlaylistFolder(this);
    }
    return orElse();
  }
}

abstract class AddNewPlaylistFolder implements PlaylistsEvent {
  const factory AddNewPlaylistFolder({required final String folderName}) =
      _$AddNewPlaylistFolder;

  String get folderName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AddNewPlaylistFolderCopyWith<_$AddNewPlaylistFolder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePlayListFolderCopyWith<$Res> {
  factory _$$DeletePlayListFolderCopyWith(_$DeletePlayListFolder value,
          $Res Function(_$DeletePlayListFolder) then) =
      __$$DeletePlayListFolderCopyWithImpl<$Res>;
  $Res call({int playListIndex});
}

/// @nodoc
class __$$DeletePlayListFolderCopyWithImpl<$Res>
    extends _$PlaylistsEventCopyWithImpl<$Res>
    implements _$$DeletePlayListFolderCopyWith<$Res> {
  __$$DeletePlayListFolderCopyWithImpl(_$DeletePlayListFolder _value,
      $Res Function(_$DeletePlayListFolder) _then)
      : super(_value, (v) => _then(v as _$DeletePlayListFolder));

  @override
  _$DeletePlayListFolder get _value => super._value as _$DeletePlayListFolder;

  @override
  $Res call({
    Object? playListIndex = freezed,
  }) {
    return _then(_$DeletePlayListFolder(
      playListIndex: playListIndex == freezed
          ? _value.playListIndex
          : playListIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeletePlayListFolder implements DeletePlayListFolder {
  const _$DeletePlayListFolder({required this.playListIndex});

  @override
  final int playListIndex;

  @override
  String toString() {
    return 'PlaylistsEvent.deletePlayListFolder(playListIndex: $playListIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePlayListFolder &&
            const DeepCollectionEquality()
                .equals(other.playListIndex, playListIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(playListIndex));

  @JsonKey(ignore: true)
  @override
  _$$DeletePlayListFolderCopyWith<_$DeletePlayListFolder> get copyWith =>
      __$$DeletePlayListFolderCopyWithImpl<_$DeletePlayListFolder>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPlayLists,
    required TResult Function(String folderName) addNewPlaylistFolder,
    required TResult Function(int playListIndex) deletePlayListFolder,
    required TResult Function(String videoPath, int playListIndex)
        addNewVidoeToPlayList,
    required TResult Function(int playListfolderIndex, int currentVideoIndex)
        deleteVideoFromPlaylist,
    required TResult Function() clearAllPlaylist,
  }) {
    return deletePlayListFolder(playListIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllPlayLists,
    TResult Function(String folderName)? addNewPlaylistFolder,
    TResult Function(int playListIndex)? deletePlayListFolder,
    TResult Function(String videoPath, int playListIndex)?
        addNewVidoeToPlayList,
    TResult Function(int playListfolderIndex, int currentVideoIndex)?
        deleteVideoFromPlaylist,
    TResult Function()? clearAllPlaylist,
  }) {
    return deletePlayListFolder?.call(playListIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPlayLists,
    TResult Function(String folderName)? addNewPlaylistFolder,
    TResult Function(int playListIndex)? deletePlayListFolder,
    TResult Function(String videoPath, int playListIndex)?
        addNewVidoeToPlayList,
    TResult Function(int playListfolderIndex, int currentVideoIndex)?
        deleteVideoFromPlaylist,
    TResult Function()? clearAllPlaylist,
    required TResult orElse(),
  }) {
    if (deletePlayListFolder != null) {
      return deletePlayListFolder(playListIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllPlayLists value) getAllPlayLists,
    required TResult Function(AddNewPlaylistFolder value) addNewPlaylistFolder,
    required TResult Function(DeletePlayListFolder value) deletePlayListFolder,
    required TResult Function(AddNewVidoeToPlayList value)
        addNewVidoeToPlayList,
    required TResult Function(DeleteVideoFromPlaylist value)
        deleteVideoFromPlaylist,
    required TResult Function(clearAllPlaylist value) clearAllPlaylist,
  }) {
    return deletePlayListFolder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllPlayLists value)? getAllPlayLists,
    TResult Function(AddNewPlaylistFolder value)? addNewPlaylistFolder,
    TResult Function(DeletePlayListFolder value)? deletePlayListFolder,
    TResult Function(AddNewVidoeToPlayList value)? addNewVidoeToPlayList,
    TResult Function(DeleteVideoFromPlaylist value)? deleteVideoFromPlaylist,
    TResult Function(clearAllPlaylist value)? clearAllPlaylist,
  }) {
    return deletePlayListFolder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllPlayLists value)? getAllPlayLists,
    TResult Function(AddNewPlaylistFolder value)? addNewPlaylistFolder,
    TResult Function(DeletePlayListFolder value)? deletePlayListFolder,
    TResult Function(AddNewVidoeToPlayList value)? addNewVidoeToPlayList,
    TResult Function(DeleteVideoFromPlaylist value)? deleteVideoFromPlaylist,
    TResult Function(clearAllPlaylist value)? clearAllPlaylist,
    required TResult orElse(),
  }) {
    if (deletePlayListFolder != null) {
      return deletePlayListFolder(this);
    }
    return orElse();
  }
}

abstract class DeletePlayListFolder implements PlaylistsEvent {
  const factory DeletePlayListFolder({required final int playListIndex}) =
      _$DeletePlayListFolder;

  int get playListIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DeletePlayListFolderCopyWith<_$DeletePlayListFolder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNewVidoeToPlayListCopyWith<$Res> {
  factory _$$AddNewVidoeToPlayListCopyWith(_$AddNewVidoeToPlayList value,
          $Res Function(_$AddNewVidoeToPlayList) then) =
      __$$AddNewVidoeToPlayListCopyWithImpl<$Res>;
  $Res call({String videoPath, int playListIndex});
}

/// @nodoc
class __$$AddNewVidoeToPlayListCopyWithImpl<$Res>
    extends _$PlaylistsEventCopyWithImpl<$Res>
    implements _$$AddNewVidoeToPlayListCopyWith<$Res> {
  __$$AddNewVidoeToPlayListCopyWithImpl(_$AddNewVidoeToPlayList _value,
      $Res Function(_$AddNewVidoeToPlayList) _then)
      : super(_value, (v) => _then(v as _$AddNewVidoeToPlayList));

  @override
  _$AddNewVidoeToPlayList get _value => super._value as _$AddNewVidoeToPlayList;

  @override
  $Res call({
    Object? videoPath = freezed,
    Object? playListIndex = freezed,
  }) {
    return _then(_$AddNewVidoeToPlayList(
      videoPath: videoPath == freezed
          ? _value.videoPath
          : videoPath // ignore: cast_nullable_to_non_nullable
              as String,
      playListIndex: playListIndex == freezed
          ? _value.playListIndex
          : playListIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddNewVidoeToPlayList implements AddNewVidoeToPlayList {
  const _$AddNewVidoeToPlayList(
      {required this.videoPath, required this.playListIndex});

  @override
  final String videoPath;
  @override
  final int playListIndex;

  @override
  String toString() {
    return 'PlaylistsEvent.addNewVidoeToPlayList(videoPath: $videoPath, playListIndex: $playListIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewVidoeToPlayList &&
            const DeepCollectionEquality().equals(other.videoPath, videoPath) &&
            const DeepCollectionEquality()
                .equals(other.playListIndex, playListIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(videoPath),
      const DeepCollectionEquality().hash(playListIndex));

  @JsonKey(ignore: true)
  @override
  _$$AddNewVidoeToPlayListCopyWith<_$AddNewVidoeToPlayList> get copyWith =>
      __$$AddNewVidoeToPlayListCopyWithImpl<_$AddNewVidoeToPlayList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPlayLists,
    required TResult Function(String folderName) addNewPlaylistFolder,
    required TResult Function(int playListIndex) deletePlayListFolder,
    required TResult Function(String videoPath, int playListIndex)
        addNewVidoeToPlayList,
    required TResult Function(int playListfolderIndex, int currentVideoIndex)
        deleteVideoFromPlaylist,
    required TResult Function() clearAllPlaylist,
  }) {
    return addNewVidoeToPlayList(videoPath, playListIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllPlayLists,
    TResult Function(String folderName)? addNewPlaylistFolder,
    TResult Function(int playListIndex)? deletePlayListFolder,
    TResult Function(String videoPath, int playListIndex)?
        addNewVidoeToPlayList,
    TResult Function(int playListfolderIndex, int currentVideoIndex)?
        deleteVideoFromPlaylist,
    TResult Function()? clearAllPlaylist,
  }) {
    return addNewVidoeToPlayList?.call(videoPath, playListIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPlayLists,
    TResult Function(String folderName)? addNewPlaylistFolder,
    TResult Function(int playListIndex)? deletePlayListFolder,
    TResult Function(String videoPath, int playListIndex)?
        addNewVidoeToPlayList,
    TResult Function(int playListfolderIndex, int currentVideoIndex)?
        deleteVideoFromPlaylist,
    TResult Function()? clearAllPlaylist,
    required TResult orElse(),
  }) {
    if (addNewVidoeToPlayList != null) {
      return addNewVidoeToPlayList(videoPath, playListIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllPlayLists value) getAllPlayLists,
    required TResult Function(AddNewPlaylistFolder value) addNewPlaylistFolder,
    required TResult Function(DeletePlayListFolder value) deletePlayListFolder,
    required TResult Function(AddNewVidoeToPlayList value)
        addNewVidoeToPlayList,
    required TResult Function(DeleteVideoFromPlaylist value)
        deleteVideoFromPlaylist,
    required TResult Function(clearAllPlaylist value) clearAllPlaylist,
  }) {
    return addNewVidoeToPlayList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllPlayLists value)? getAllPlayLists,
    TResult Function(AddNewPlaylistFolder value)? addNewPlaylistFolder,
    TResult Function(DeletePlayListFolder value)? deletePlayListFolder,
    TResult Function(AddNewVidoeToPlayList value)? addNewVidoeToPlayList,
    TResult Function(DeleteVideoFromPlaylist value)? deleteVideoFromPlaylist,
    TResult Function(clearAllPlaylist value)? clearAllPlaylist,
  }) {
    return addNewVidoeToPlayList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllPlayLists value)? getAllPlayLists,
    TResult Function(AddNewPlaylistFolder value)? addNewPlaylistFolder,
    TResult Function(DeletePlayListFolder value)? deletePlayListFolder,
    TResult Function(AddNewVidoeToPlayList value)? addNewVidoeToPlayList,
    TResult Function(DeleteVideoFromPlaylist value)? deleteVideoFromPlaylist,
    TResult Function(clearAllPlaylist value)? clearAllPlaylist,
    required TResult orElse(),
  }) {
    if (addNewVidoeToPlayList != null) {
      return addNewVidoeToPlayList(this);
    }
    return orElse();
  }
}

abstract class AddNewVidoeToPlayList implements PlaylistsEvent {
  const factory AddNewVidoeToPlayList(
      {required final String videoPath,
      required final int playListIndex}) = _$AddNewVidoeToPlayList;

  String get videoPath => throw _privateConstructorUsedError;
  int get playListIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AddNewVidoeToPlayListCopyWith<_$AddNewVidoeToPlayList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteVideoFromPlaylistCopyWith<$Res> {
  factory _$$DeleteVideoFromPlaylistCopyWith(_$DeleteVideoFromPlaylist value,
          $Res Function(_$DeleteVideoFromPlaylist) then) =
      __$$DeleteVideoFromPlaylistCopyWithImpl<$Res>;
  $Res call({int playListfolderIndex, int currentVideoIndex});
}

/// @nodoc
class __$$DeleteVideoFromPlaylistCopyWithImpl<$Res>
    extends _$PlaylistsEventCopyWithImpl<$Res>
    implements _$$DeleteVideoFromPlaylistCopyWith<$Res> {
  __$$DeleteVideoFromPlaylistCopyWithImpl(_$DeleteVideoFromPlaylist _value,
      $Res Function(_$DeleteVideoFromPlaylist) _then)
      : super(_value, (v) => _then(v as _$DeleteVideoFromPlaylist));

  @override
  _$DeleteVideoFromPlaylist get _value =>
      super._value as _$DeleteVideoFromPlaylist;

  @override
  $Res call({
    Object? playListfolderIndex = freezed,
    Object? currentVideoIndex = freezed,
  }) {
    return _then(_$DeleteVideoFromPlaylist(
      playListfolderIndex: playListfolderIndex == freezed
          ? _value.playListfolderIndex
          : playListfolderIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentVideoIndex: currentVideoIndex == freezed
          ? _value.currentVideoIndex
          : currentVideoIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteVideoFromPlaylist implements DeleteVideoFromPlaylist {
  const _$DeleteVideoFromPlaylist(
      {required this.playListfolderIndex, required this.currentVideoIndex});

  @override
  final int playListfolderIndex;
  @override
  final int currentVideoIndex;

  @override
  String toString() {
    return 'PlaylistsEvent.deleteVideoFromPlaylist(playListfolderIndex: $playListfolderIndex, currentVideoIndex: $currentVideoIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteVideoFromPlaylist &&
            const DeepCollectionEquality()
                .equals(other.playListfolderIndex, playListfolderIndex) &&
            const DeepCollectionEquality()
                .equals(other.currentVideoIndex, currentVideoIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(playListfolderIndex),
      const DeepCollectionEquality().hash(currentVideoIndex));

  @JsonKey(ignore: true)
  @override
  _$$DeleteVideoFromPlaylistCopyWith<_$DeleteVideoFromPlaylist> get copyWith =>
      __$$DeleteVideoFromPlaylistCopyWithImpl<_$DeleteVideoFromPlaylist>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPlayLists,
    required TResult Function(String folderName) addNewPlaylistFolder,
    required TResult Function(int playListIndex) deletePlayListFolder,
    required TResult Function(String videoPath, int playListIndex)
        addNewVidoeToPlayList,
    required TResult Function(int playListfolderIndex, int currentVideoIndex)
        deleteVideoFromPlaylist,
    required TResult Function() clearAllPlaylist,
  }) {
    return deleteVideoFromPlaylist(playListfolderIndex, currentVideoIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllPlayLists,
    TResult Function(String folderName)? addNewPlaylistFolder,
    TResult Function(int playListIndex)? deletePlayListFolder,
    TResult Function(String videoPath, int playListIndex)?
        addNewVidoeToPlayList,
    TResult Function(int playListfolderIndex, int currentVideoIndex)?
        deleteVideoFromPlaylist,
    TResult Function()? clearAllPlaylist,
  }) {
    return deleteVideoFromPlaylist?.call(
        playListfolderIndex, currentVideoIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPlayLists,
    TResult Function(String folderName)? addNewPlaylistFolder,
    TResult Function(int playListIndex)? deletePlayListFolder,
    TResult Function(String videoPath, int playListIndex)?
        addNewVidoeToPlayList,
    TResult Function(int playListfolderIndex, int currentVideoIndex)?
        deleteVideoFromPlaylist,
    TResult Function()? clearAllPlaylist,
    required TResult orElse(),
  }) {
    if (deleteVideoFromPlaylist != null) {
      return deleteVideoFromPlaylist(playListfolderIndex, currentVideoIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllPlayLists value) getAllPlayLists,
    required TResult Function(AddNewPlaylistFolder value) addNewPlaylistFolder,
    required TResult Function(DeletePlayListFolder value) deletePlayListFolder,
    required TResult Function(AddNewVidoeToPlayList value)
        addNewVidoeToPlayList,
    required TResult Function(DeleteVideoFromPlaylist value)
        deleteVideoFromPlaylist,
    required TResult Function(clearAllPlaylist value) clearAllPlaylist,
  }) {
    return deleteVideoFromPlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllPlayLists value)? getAllPlayLists,
    TResult Function(AddNewPlaylistFolder value)? addNewPlaylistFolder,
    TResult Function(DeletePlayListFolder value)? deletePlayListFolder,
    TResult Function(AddNewVidoeToPlayList value)? addNewVidoeToPlayList,
    TResult Function(DeleteVideoFromPlaylist value)? deleteVideoFromPlaylist,
    TResult Function(clearAllPlaylist value)? clearAllPlaylist,
  }) {
    return deleteVideoFromPlaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllPlayLists value)? getAllPlayLists,
    TResult Function(AddNewPlaylistFolder value)? addNewPlaylistFolder,
    TResult Function(DeletePlayListFolder value)? deletePlayListFolder,
    TResult Function(AddNewVidoeToPlayList value)? addNewVidoeToPlayList,
    TResult Function(DeleteVideoFromPlaylist value)? deleteVideoFromPlaylist,
    TResult Function(clearAllPlaylist value)? clearAllPlaylist,
    required TResult orElse(),
  }) {
    if (deleteVideoFromPlaylist != null) {
      return deleteVideoFromPlaylist(this);
    }
    return orElse();
  }
}

abstract class DeleteVideoFromPlaylist implements PlaylistsEvent {
  const factory DeleteVideoFromPlaylist(
      {required final int playListfolderIndex,
      required final int currentVideoIndex}) = _$DeleteVideoFromPlaylist;

  int get playListfolderIndex => throw _privateConstructorUsedError;
  int get currentVideoIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DeleteVideoFromPlaylistCopyWith<_$DeleteVideoFromPlaylist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$clearAllPlaylistCopyWith<$Res> {
  factory _$$clearAllPlaylistCopyWith(
          _$clearAllPlaylist value, $Res Function(_$clearAllPlaylist) then) =
      __$$clearAllPlaylistCopyWithImpl<$Res>;
}

/// @nodoc
class __$$clearAllPlaylistCopyWithImpl<$Res>
    extends _$PlaylistsEventCopyWithImpl<$Res>
    implements _$$clearAllPlaylistCopyWith<$Res> {
  __$$clearAllPlaylistCopyWithImpl(
      _$clearAllPlaylist _value, $Res Function(_$clearAllPlaylist) _then)
      : super(_value, (v) => _then(v as _$clearAllPlaylist));

  @override
  _$clearAllPlaylist get _value => super._value as _$clearAllPlaylist;
}

/// @nodoc

class _$clearAllPlaylist implements clearAllPlaylist {
  const _$clearAllPlaylist();

  @override
  String toString() {
    return 'PlaylistsEvent.clearAllPlaylist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$clearAllPlaylist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPlayLists,
    required TResult Function(String folderName) addNewPlaylistFolder,
    required TResult Function(int playListIndex) deletePlayListFolder,
    required TResult Function(String videoPath, int playListIndex)
        addNewVidoeToPlayList,
    required TResult Function(int playListfolderIndex, int currentVideoIndex)
        deleteVideoFromPlaylist,
    required TResult Function() clearAllPlaylist,
  }) {
    return clearAllPlaylist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllPlayLists,
    TResult Function(String folderName)? addNewPlaylistFolder,
    TResult Function(int playListIndex)? deletePlayListFolder,
    TResult Function(String videoPath, int playListIndex)?
        addNewVidoeToPlayList,
    TResult Function(int playListfolderIndex, int currentVideoIndex)?
        deleteVideoFromPlaylist,
    TResult Function()? clearAllPlaylist,
  }) {
    return clearAllPlaylist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPlayLists,
    TResult Function(String folderName)? addNewPlaylistFolder,
    TResult Function(int playListIndex)? deletePlayListFolder,
    TResult Function(String videoPath, int playListIndex)?
        addNewVidoeToPlayList,
    TResult Function(int playListfolderIndex, int currentVideoIndex)?
        deleteVideoFromPlaylist,
    TResult Function()? clearAllPlaylist,
    required TResult orElse(),
  }) {
    if (clearAllPlaylist != null) {
      return clearAllPlaylist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllPlayLists value) getAllPlayLists,
    required TResult Function(AddNewPlaylistFolder value) addNewPlaylistFolder,
    required TResult Function(DeletePlayListFolder value) deletePlayListFolder,
    required TResult Function(AddNewVidoeToPlayList value)
        addNewVidoeToPlayList,
    required TResult Function(DeleteVideoFromPlaylist value)
        deleteVideoFromPlaylist,
    required TResult Function(clearAllPlaylist value) clearAllPlaylist,
  }) {
    return clearAllPlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllPlayLists value)? getAllPlayLists,
    TResult Function(AddNewPlaylistFolder value)? addNewPlaylistFolder,
    TResult Function(DeletePlayListFolder value)? deletePlayListFolder,
    TResult Function(AddNewVidoeToPlayList value)? addNewVidoeToPlayList,
    TResult Function(DeleteVideoFromPlaylist value)? deleteVideoFromPlaylist,
    TResult Function(clearAllPlaylist value)? clearAllPlaylist,
  }) {
    return clearAllPlaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllPlayLists value)? getAllPlayLists,
    TResult Function(AddNewPlaylistFolder value)? addNewPlaylistFolder,
    TResult Function(DeletePlayListFolder value)? deletePlayListFolder,
    TResult Function(AddNewVidoeToPlayList value)? addNewVidoeToPlayList,
    TResult Function(DeleteVideoFromPlaylist value)? deleteVideoFromPlaylist,
    TResult Function(clearAllPlaylist value)? clearAllPlaylist,
    required TResult orElse(),
  }) {
    if (clearAllPlaylist != null) {
      return clearAllPlaylist(this);
    }
    return orElse();
  }
}

abstract class clearAllPlaylist implements PlaylistsEvent {
  const factory clearAllPlaylist() = _$clearAllPlaylist;
}

/// @nodoc
mixin _$PlaylistsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<PlayListModel> get playListVideos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaylistsStateCopyWith<PlaylistsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistsStateCopyWith<$Res> {
  factory $PlaylistsStateCopyWith(
          PlaylistsState value, $Res Function(PlaylistsState) then) =
      _$PlaylistsStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<PlayListModel> playListVideos});
}

/// @nodoc
class _$PlaylistsStateCopyWithImpl<$Res>
    implements $PlaylistsStateCopyWith<$Res> {
  _$PlaylistsStateCopyWithImpl(this._value, this._then);

  final PlaylistsState _value;
  // ignore: unused_field
  final $Res Function(PlaylistsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? playListVideos = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      playListVideos: playListVideos == freezed
          ? _value.playListVideos
          : playListVideos // ignore: cast_nullable_to_non_nullable
              as List<PlayListModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_PlaylistsStateCopyWith<$Res>
    implements $PlaylistsStateCopyWith<$Res> {
  factory _$$_PlaylistsStateCopyWith(
          _$_PlaylistsState value, $Res Function(_$_PlaylistsState) then) =
      __$$_PlaylistsStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<PlayListModel> playListVideos});
}

/// @nodoc
class __$$_PlaylistsStateCopyWithImpl<$Res>
    extends _$PlaylistsStateCopyWithImpl<$Res>
    implements _$$_PlaylistsStateCopyWith<$Res> {
  __$$_PlaylistsStateCopyWithImpl(
      _$_PlaylistsState _value, $Res Function(_$_PlaylistsState) _then)
      : super(_value, (v) => _then(v as _$_PlaylistsState));

  @override
  _$_PlaylistsState get _value => super._value as _$_PlaylistsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? playListVideos = freezed,
  }) {
    return _then(_$_PlaylistsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      playListVideos: playListVideos == freezed
          ? _value._playListVideos
          : playListVideos // ignore: cast_nullable_to_non_nullable
              as List<PlayListModel>,
    ));
  }
}

/// @nodoc

class _$_PlaylistsState implements _PlaylistsState {
  const _$_PlaylistsState(
      {required this.isLoading,
      required final List<PlayListModel> playListVideos})
      : _playListVideos = playListVideos;

  @override
  final bool isLoading;
  final List<PlayListModel> _playListVideos;
  @override
  List<PlayListModel> get playListVideos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playListVideos);
  }

  @override
  String toString() {
    return 'PlaylistsState(isLoading: $isLoading, playListVideos: $playListVideos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaylistsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other._playListVideos, _playListVideos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_playListVideos));

  @JsonKey(ignore: true)
  @override
  _$$_PlaylistsStateCopyWith<_$_PlaylistsState> get copyWith =>
      __$$_PlaylistsStateCopyWithImpl<_$_PlaylistsState>(this, _$identity);
}

abstract class _PlaylistsState implements PlaylistsState {
  const factory _PlaylistsState(
      {required final bool isLoading,
      required final List<PlayListModel> playListVideos}) = _$_PlaylistsState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<PlayListModel> get playListVideos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PlaylistsStateCopyWith<_$_PlaylistsState> get copyWith =>
      throw _privateConstructorUsedError;
}
