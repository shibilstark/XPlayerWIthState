// ignore_for_file: invalid_use_of_visible_for_testing_member
import 'package:flutter/widgets.dart';
import 'dart:developer';
import 'package:flutter/services.dart';

class SearchFilesInStorage {
  static const _platform = MethodChannel('search_files_in_storage/search');

  static void searchInStorage(
    List<String> query,
    void Function(List<String>) onSuccess,
    void Function(String) onError,
  ) {
    _platform.invokeMethod('search', query).then((value) {
      final _res = value as List<Object?>;
      onSuccess(_res.map((e) => e.toString()).toList());
    }).onError((error, stackTrace) {
      log(error.toString());
      onError(error.toString());
    });
  }
}

ValueNotifier<List<String>> allVideos = ValueNotifier([]);

onSuccess(List<String> vidoeListFromStorage) {
  allVideos.value = vidoeListFromStorage;
  allVideos.value
      .sort((a, b) => a.split("/").last.compareTo(b.split("/").last));
  // ignore: invalid_use_of_protected_member
  allVideos.notifyListeners();
}

fetchVideosFromStorage() async {
  List<String> query = [".mp4", ".avi", "mkv", "3gp"];
  SearchFilesInStorage.searchInStorage(query, onSuccess, (p0) {});
}

ValueNotifier<List<String>> folderList = ValueNotifier([]);

clearFolderList() {
  folderList.value.clear();
}

folderBuilder() {
  folderList.value.clear();
  for (String item in allVideos.value) {
    var pathList = item.split("/");

    pathList.removeLast();

    var path = pathList.join("/");

    if (folderList.value.contains(path)) {
      continue;
    } else {
      folderList.value.add(path);
    }
  }

  folderList.value
      .sort((a, b) => a.split("/").last.compareTo(b.split("/").last));
}

createFolderView() {
  clearFolderList();
  folderBuilder();
  folderList.notifyListeners();
}
