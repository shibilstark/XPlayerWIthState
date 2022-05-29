part of 'video_info_bloc.dart';

@freezed
class VideoInfoEvent with _$VideoInfoEvent {
  const factory VideoInfoEvent.Initial() = Initial;
  const factory VideoInfoEvent.getVideoInfo({required String videoPath}) =
      GetVideoInfo;
}
