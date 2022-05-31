import 'package:hive_flutter/adapters.dart';
part 'model.g.dart';

@HiveType(typeId: 3)
class LastPlayedModel {
  @HiveField(0)
  final String lastVideo;

  LastPlayedModel({required this.lastVideo});
}
