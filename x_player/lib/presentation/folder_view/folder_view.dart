// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:x_player/application/fetch_videos/vidoes_fetch.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/styles.dart';
import 'package:x_player/presentation/folder_view/folder_info.dart';
import 'package:x_player/presentation/screen_inner_folder/screen_inner_folder.dart';

class FolderView extends StatelessWidget {
  const FolderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    createFolderView();
    folderList.notifyListeners();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: SizedBox(
        child: folderList.value.isNotEmpty
            ? ListView.separated(
                itemBuilder: (context, index) {
                  final currentFolder = folderList.value[index];
                  return FolderListTile(
                    folder: currentFolder,
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                      thickness: 0.5,
                      height: 5,
                    ),
                itemCount: folderList.value.length)
            : const Center(
                child: Text("Empty"),
              ),
      ),
    );
  }
}

class FolderListTile extends StatelessWidget {
  final String folder;
  const FolderListTile({Key? key, required this.folder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final folderName = folder.split("/").last;

    ValueNotifier<List<String>> currentFolderList = ValueNotifier([]);

    for (String item in allVideos.value) {
      if (item == folder + "/" + item.split("/").last) {
        currentFolderList.value.add(item);
      }
    }
    currentFolderList.notifyListeners();
    return Card(
      elevation: 0.5,
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => ScreenInnerFolder(
                  folderName: folderName,
                  innerVideosList: currentFolderList.value)));
        },
        onLongPress: () {
          showModalBottomSheet(
              elevation: 5,
              isDismissible: true,
              context: context,
              builder: (context) => FolderInfoBox(
                    folder: folder,
                    list: currentFolderList.value,
                  ));
        },
        tileColor: pureWhite,
        // tileColor: Color.fromARGB(69, 176, 200, 240),
        leading: const Icon(
          Icons.folder,
          size: 50,
          color: lightBlue,
        ),

        title: Text(
          folderName,
          style: tileTitleStyle,
        ),

        subtitle: Text(
          " ${currentFolderList.value.length} files",
          style: tileSubTitleStyle,
        ),
      ),
    );
  }
}
