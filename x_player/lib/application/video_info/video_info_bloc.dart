// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_video_info/flutter_video_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:x_player/domain/models/last_played/model.dart';

part 'video_info_event.dart';
part 'video_info_state.dart';
part 'video_info_bloc.freezed.dart';

class VideoInfoBloc extends Bloc<VideoInfoEvent, VideoInfoState> {
  VideoInfoBloc() : super(VideoInfoState.initial()) {
    final videoInfo = FlutterVideoInfo();
    on<GetVideoInfo>((event, emit) async {
      emit(VideoInfoState(
          isLoading: true, info: null, lastPlayed: state.lastPlayed));

      final info = await videoInfo.getVideoInfo(event.videoPath);

      emit(VideoInfoState(
          isLoading: false, info: info, lastPlayed: state.lastPlayed));
    });

    on<GetLastPlayed>((event, emit) async {
      emit(VideoInfoState(
          isLoading: true, info: null, lastPlayed: state.lastPlayed));

      final _LPDB = await Hive.openBox<LastPlayedModel>("_LPDB");

      final lastPlayed = _LPDB.values.first.lastVideo;

      emit(
        VideoInfoState(
            isLoading: false, info: state.info, lastPlayed: lastPlayed),
      );
    });
    on<SetLastPlayed>((event, emit) async {
      emit(const VideoInfoState(isLoading: true, info: null, lastPlayed: null));

      final _LPDB = await Hive.openBox<LastPlayedModel>("_LPDB");

      await _LPDB.clear();
      final model = LastPlayedModel(lastVideo: event.lastPlayed);

      await _LPDB.add(model);

      emit(
        VideoInfoState(
            isLoading: false, info: state.info, lastPlayed: state.lastPlayed),
      );
    });
    on<ClearLastPlayed>((event, emit) async {
      emit(const VideoInfoState(isLoading: true, info: null, lastPlayed: null));

      final _LPDB = await Hive.openBox<LastPlayedModel>("_LPDB");

      await _LPDB.clear();

      emit(
        VideoInfoState(isLoading: false, info: state.info, lastPlayed: null),
      );
    });
  }
}
