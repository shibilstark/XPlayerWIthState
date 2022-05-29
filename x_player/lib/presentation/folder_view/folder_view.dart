import 'package:flutter/material.dart';
import 'package:x_player/application/fetch_videos/vidoes_fetch.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/styles.dart';
import 'package:x_player/presentation/screen_home/home_screen.dart';
import 'package:x_player/presentation/screen_inner_folder/screen_inner_folder.dart';

class FolderView extends StatelessWidget {
  const FolderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    createFolderView();
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

class FolderInfoBox extends StatelessWidget {
  final List<String> list;
  final folder;
  FolderInfoBox({Key? key, required this.list, required this.folder})
      : super(key: key);
  List<String>? listOfVideos = [];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    for (String item in list) {
      var name = item.split("/").last;

      listOfVideos!.add(name);
    }
    return Container(
      height: height / 3,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: ListView(
          children: [
            Text(
              "Properties",
              style: TextStyle(color: darkBlue, fontSize: 17),
            ),
            Divider(
              thickness: 2,
              color: middleBlue,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                folderPropertiesTexture(
                    context, "Folder Name", folder.split("/").last, width),
                folderPropertiesTexture(context, "Folder Path", folder, width),
                folderPropertiesTexture(
                    context, "Video count", "${list.length}", width),
                folderPropertiesTexture(
                    context, "Videos ", "${listOfVideos!.join("\n")}", width),
              ],
            )
          ],
        ),
      ),
    );
  }
}

folderPropertiesTexture(
    BuildContext context, String key, var data, double width) {
  return Container(
      child: Row(
    children: [
      Container(
        width: width * 0.2,
        child: Text(
          key,
          style: TextStyle(fontSize: 16),
        ),
      ),
      Container(
        width: width * 0.0,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              ":",
              style: TextStyle(
                  fontSize: 15, color: darkBlue, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      Container(
          width: width * 0.51,
          child: Text(
            data,
            style: TextStyle(
                fontSize: 15, color: darkBlue, fontStyle: FontStyle.italic),
          )),
    ],
  ));
}
