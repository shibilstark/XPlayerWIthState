part of 'playlists_bloc.dart';

@freezed
class PlaylistsState with _$PlaylistsState {
  const factory PlaylistsState({
    required bool isLoading,
    required List<PlayListModel> playListVideos,
  }) = _PlaylistsState;

  factory PlaylistsState.initial() => const PlaylistsState(
        isLoading: false,
        playListVideos: [],
      );
}
