// ignore_for_file: non_constant_identifier_names

part of 'video_info_bloc.dart';

@freezed
class VideoInfoEvent with _$VideoInfoEvent {
  const factory VideoInfoEvent.Initial() = Initial;
  const factory VideoInfoEvent.getVideoInfo({required String videoPath}) =
      GetVideoInfo;
  const factory VideoInfoEvent.getLastPlayed() = GetLastPlayed;
  const factory VideoInfoEvent.setLastPlayed({required String lastPlayed}) =
      SetLastPlayed;
  const factory VideoInfoEvent.clearLastPlayed() = ClearLastPlayed;
}
