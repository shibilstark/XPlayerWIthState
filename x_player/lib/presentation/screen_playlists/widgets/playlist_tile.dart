import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_player/application/playlist/playlists_bloc.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/styles.dart';
import 'package:x_player/presentation/screen_inner_playlist/screen_inner_playlist.dart';

class PlayListTile extends StatelessWidget {
  final int index;
  const PlayListTile({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: BlocBuilder<PlaylistsBloc, PlaylistsState>(
        builder: (context, state) {
          final currentElement = state.playListVideos[index];
          return ListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),

            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => ScreenInnerPlayList(
                        folderName: currentElement.playListName,
                        folderIndex: index,
                      )));
            },
            onLongPress: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        content: Text(
                          "Delete ${currentElement.playListName} ? ",
                          style: const TextStyle(
                            color: middleBlue,
                          ),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                "Cancel",
                                style: TextStyle(
                                  color: middleBlue,
                                ),
                              )),
                          TextButton(
                              onPressed: () {
                                BlocProvider.of<PlaylistsBloc>(context).add(
                                    DeletePlayListFolder(playListIndex: index));

                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                "Delete",
                                style: TextStyle(
                                  color: middleBlue,
                                ),
                              )),
                        ],
                      ));
            },
            tileColor: pureWhite,
            // tileColor: Color.fromARGB(69, 176, 200, 240),
            leading: const Icon(
              Icons.playlist_play_rounded,
              size: 50,
              color: lightBlue,
            ),

            title: Text(
              currentElement.playListName,
              style: tileTitleStyle,
            ),

            subtitle: Text(
              " ${currentElement.currenPlayListVideos.length} files",
              style: tileSubTitleStyle,
            ),
          );
        },
      ),
    );
  }
}
