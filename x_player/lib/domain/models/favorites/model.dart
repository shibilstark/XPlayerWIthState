import 'package:hive_flutter/hive_flutter.dart';
part 'model.g.dart';

@HiveType(typeId: 1)
class FavoritesModel {
  @HiveField(0)
  final String path;

  FavoritesModel({required this.path});
}
