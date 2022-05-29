import 'package:flutter/material.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/functions.dart';
import 'package:x_player/common/styles.dart';
import 'package:x_player/presentation/folder_view/folder_view.dart';
import 'package:x_player/presentation/screen_inner_folder/screen_inner_folder.dart';

import '../../application/fetch_videos/vidoes_fetch.dart';

class ScreenFavorites extends StatelessWidget {
  const ScreenFavorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: lightBlue,
        foregroundColor: pureWhite,
        onPressed: () {},
        child: Icon(Icons.playlist_add),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Container(
            child: Column(
          children: [
            // AddPlayListTile(),
            FavoriteFolderTile(),
            Container(
              child: Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return PlayListTile();
                      },
                      separatorBuilder: (context, index) => Divider(
                            thickness: 0.4,
                            color: bgShade,
                            height: 0,
                          ),
                      itemCount: 12)),
            )
          ],
        )),
      ),
    );
  }
}

class FavoriteFolderTile extends StatelessWidget {
  const FavoriteFolderTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),

        onTap: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (ctx) => ScreenInnerFolder(
          //         folderName: folderName,
          //         innerVideosList: currentFolderList.value)));
        },
        onLongPress: () {
          // showModalBottomSheet(
          //     elevation: 5,
          //     isDismissible: true,
          //     context: context,
          //     builder: (context) => FolderInfoBox(
          //           folder: folder,
          //           list: currentFolderList.value,
          //         ));
        },
        tileColor: pureWhite,
        // tileColor: Color.fromARGB(69, 176, 200, 240),
        leading: Stack(
          alignment: Alignment.center,
          children: const [
            Icon(
              Icons.folder,
              size: 50,
              color: lightBlue,
            ),
            Padding(
              padding: EdgeInsets.only(top: 4),
              child: Icon(
                Icons.favorite_rounded,
                size: 25,
                color: bgShade,
              ),
            ),
          ],
        ),

        title: Text(
          "Favorites",
          style: tileTitleStyle,
        ),

        // subtitle: Text(
        //   " ${currentFolderList.value.length} files",
        //   style: tileSubTitleStyle,
        // ),
      ),
    );
  }
}

class AddPlayListTile extends StatelessWidget {
  const AddPlayListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),

        onTap: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (ctx) => ScreenInnerFolder(
          //         folderName: folderName,
          //         innerVideosList: currentFolderList.value)));
        },
        onLongPress: () {
          // showModalBottomSheet(
          //     elevation: 5,
          //     isDismissible: true,
          //     context: context,
          //     builder: (context) => FolderInfoBox(
          //           folder: folder,
          //           list: currentFolderList.value,
          //         ));
        },
        tileColor: pureWhite,
        // tileColor: Color.fromARGB(69, 176, 200, 240),
        leading: const Icon(
          Icons.playlist_add_rounded,
          size: 45,
          color: lightBlue,
        ),

        title: Text(
          "Create New PlayList",
          style: tileTitleStyle,
        ),

        // subtitle: Text(
        //   " ${currentFolderList.value.length} files",
        //   style: tileSubTitleStyle,
        // ),
      ),
    );
  }
}

class PlayListTile extends StatelessWidget {
  const PlayListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),

        onTap: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (ctx) => ScreenInnerFolder(
          //         folderName: folderName,
          //         innerVideosList: currentFolderList.value)));
        },
        onLongPress: () {
          // showModalBottomSheet(
          //     elevation: 5,
          //     isDismissible: true,
          //     context: context,
          //     builder: (context) => FolderInfoBox(
          //           folder: folder,
          //           list: currentFolderList.value,
          //         ));
        },
        tileColor: pureWhite,
        // tileColor: Color.fromARGB(69, 176, 200, 240),
        leading: const Icon(
          Icons.playlist_play_rounded,
          size: 50,
          color: lightBlue,
        ),

        title: Text(
          "PlayList Folder Name",
          style: tileTitleStyle,
        ),

        // subtitle: Text(
        //   " ${currentFolderList.value.length} files",
        //   style: tileSubTitleStyle,
        // ),
      ),
    );
  }
}
