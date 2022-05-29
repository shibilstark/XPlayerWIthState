part of 'video_info_bloc.dart';

@freezed
class VideoInfoState with _$VideoInfoState {
  const factory VideoInfoState(
      {required bool isLoading, required VideoData? info}) = _VideoInfoState;

  factory VideoInfoState.initial() =>
      const VideoInfoState(isLoading: false, info: null);
}
