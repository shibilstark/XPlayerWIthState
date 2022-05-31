import 'package:hive_flutter/adapters.dart';
part 'model.g.dart';

@HiveType(typeId: 2)
class PlayListModel {
  @HiveField(0)
  final String playListName;
  @HiveField(1)
  final List<String> currenPlayListVideos;

  PlayListModel(
      {required this.currenPlayListVideos, required this.playListName});
}
