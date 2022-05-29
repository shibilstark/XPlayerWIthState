import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_video_info/flutter_video_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_info_event.dart';
part 'video_info_state.dart';
part 'video_info_bloc.freezed.dart';

class VideoInfoBloc extends Bloc<VideoInfoEvent, VideoInfoState> {
  VideoInfoBloc() : super(VideoInfoState.initial()) {
    final videoInfo = FlutterVideoInfo();
    on<GetVideoInfo>((event, emit) async {
      emit(VideoInfoState(isLoading: true, info: null));

      final info = await videoInfo.getVideoInfo(event.videoPath);

      emit(VideoInfoState(isLoading: false, info: info));
    });
  }
}
