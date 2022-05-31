import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:x_player/domain/models/playlist/model.dart';

part 'playlists_event.dart';
part 'playlists_state.dart';
part 'playlists_bloc.freezed.dart';

class PlaylistsBloc extends Bloc<PlaylistsEvent, PlaylistsState> {
  PlaylistsBloc() : super(PlaylistsState.initial()) {
    on<AddNewPlaylistFolder>((event, emit) async {
      final _plDB = await Hive.openBox<PlayListModel>("_plDB");

      final model = PlayListModel(
          currenPlayListVideos: [], playListName: event.folderName);
      _plDB.add(model);

      emit(PlaylistsState(
        isLoading: false,
        playListVideos: _plDB.values.toList(),
      ));
    });

    on<DeletePlayListFolder>((event, emit) async {
      final _plDB = await Hive.openBox<PlayListModel>("_plDB");

      _plDB.deleteAt(event.playListIndex);

      emit(PlaylistsState(
        isLoading: false,
        playListVideos: _plDB.values.toList(),
      ));
    });

    // ||||||||||||||||||||||||||||||||||||||||

    on<AddNewVidoeToPlayList>((event, emit) async {
      final _plDB = await Hive.openBox<PlayListModel>("_plDB");

      List<String> newList =
          _plDB.values.elementAt(event.playListIndex).currenPlayListVideos;

      newList.add(event.videoPath);

      final newModel = PlayListModel(
          currenPlayListVideos: newList,
          playListName:
              _plDB.values.elementAt(event.playListIndex).playListName);

      await _plDB.putAt(event.playListIndex, newModel);
      emit(PlaylistsState(
        isLoading: false,
        playListVideos: _plDB.values.toList(),
      ));
    });
    on<DeleteVideoFromPlaylist>((event, emit) async {
      // final _plDB = await Hive.openBox<PlayListModel>("_plDB");

      // final playList = await _plDB.values.elementAt(event.playListfolderIndex);

      // await playList.currenPlayListVideos
      //     .removeAt(await event.currentVideoIndex);

      // emit(PlaylistsState(
      //     isLoading: false,
      //     playListVideos: _plDB.values.toList(),
      //    ));

      final _plDB = await Hive.openBox<PlayListModel>("_plDB");

      List<String> newList = _plDB.values
          .elementAt(event.playListfolderIndex)
          .currenPlayListVideos;

      newList.removeAt(event.currentVideoIndex);

      final newModel = PlayListModel(
          currenPlayListVideos: newList,
          playListName:
              _plDB.values.elementAt(event.playListfolderIndex).playListName);

      await _plDB.putAt(event.playListfolderIndex, newModel);
      emit(PlaylistsState(
        isLoading: false,
        playListVideos: _plDB.values.toList(),
      ));
    });

    // ||||||||||||||||||||||||||||||||||||||||

    on<clearAllPlaylist>((event, emit) async {
      final _plDB = await Hive.openBox<PlayListModel>("_plDB");

      await _plDB.clear();

      emit(PlaylistsState(
        isLoading: false,
        playListVideos: _plDB.values.toList(),
      ));
    });
    on<GetAllPlayLists>((event, emit) async {
      final _plDB = await Hive.openBox<PlayListModel>("_plDB");

      final list = _plDB.values.toList();

      emit(PlaylistsState(
        isLoading: false,
        playListVideos: list,
      ));
    });
  }
}
