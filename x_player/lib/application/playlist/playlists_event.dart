part of 'playlists_bloc.dart';

@freezed
class PlaylistsEvent with _$PlaylistsEvent {
  const factory PlaylistsEvent.getAllPlayLists() = GetAllPlayLists;
  const factory PlaylistsEvent.addNewPlaylistFolder({
    required String folderName,
  }) = AddNewPlaylistFolder;
  const factory PlaylistsEvent.deletePlayListFolder(
      {required int playListIndex}) = DeletePlayListFolder;
  const factory PlaylistsEvent.addNewVidoeToPlayList(
      {required String videoPath,
      required int playListIndex}) = AddNewVidoeToPlayList;
  const factory PlaylistsEvent.deleteVideoFromPlaylist(
      {required int playListfolderIndex,
      required int currentVideoIndex}) = DeleteVideoFromPlaylist;
  const factory PlaylistsEvent.clearAllPlaylist() = clearAllPlaylist;
}
