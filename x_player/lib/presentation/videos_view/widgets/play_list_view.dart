import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:x_player/application/playlist/playlists_bloc.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/functions.dart';
import 'package:x_player/domain/models/playlist/model.dart';
import 'package:x_player/presentation/screen_playlists/widgets/add_new_playlist.dart';
import 'package:x_player/presentation/widgets.dart';

class PlayListView extends StatelessWidget {
  const PlayListView({
    Key? key,
    required this.height,
    required this.path,
  }) : super(key: key);

  final double height;
  final String path;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<PlaylistsBloc>(context).add(const GetAllPlayLists());
    });
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      constraints: BoxConstraints(
        maxHeight: height / 2,
      ),
      child: Column(children: [
        Container(
          width: 80,
          height: 6,
          decoration: BoxDecoration(
              color: lightBlue, borderRadius: BorderRadius.circular(5)),
        ),
        const Gap(
          H: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Playlists",
              style: TextStyle(
                color: middleBlue,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            LimitedBox(
              child: Row(children: [
                Container(
                  alignment: Alignment.center,
                  // color: Colors.amber,
                  height: 25,
                  width: 25,
                  child: IconButton(
                      padding: const EdgeInsets.all(0),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  content: AddNewPlayListWidget(),
                                ));
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 25,
                        color: middleBlue,
                      )),
                ),
              ]),
            )
          ],
        ),
        const Gap(
          H: 10,
        ),
        Expanded(
          child: SizedBox(
            child: BlocBuilder<PlaylistsBloc, PlaylistsState>(
              builder: (context, state) {
                if (state.playListVideos.isEmpty) {
                  return const EmptyFound();
                }
                return ListView.separated(
                    itemBuilder: (context, index) {
                      return PlayListSmallListTile(
                        path: path,
                        index: index,
                        playListVideos: state.playListVideos,
                      );
                    },
                    separatorBuilder: (context, index) => const Gap(
                          H: 3,
                        ),
                    itemCount: state.playListVideos.length);
              },
            ),
          ),
        )
      ]),
    );
  }
}

class PlayListSmallListTile extends StatelessWidget {
  const PlayListSmallListTile(
      {Key? key,
      required this.path,
      required this.playListVideos,
      required this.index})
      : super(key: key);

  final String path;
  final List<PlayListModel> playListVideos;
  final int index;

  @override
  Widget build(BuildContext context) {
    bool found = false;

    for (var item in playListVideos) {
      if (item.currenPlayListVideos.contains(path)) {
        found = true;
        break;
      } else {
        continue;
      }
    }
    return ListTile(
      onTap: () {
        if (found) {
          Fluttertoast.showToast(
            backgroundColor: lightBlue,
            textColor: pureWhite,
            msg: "Already present", // message
            toastLength: Toast.LENGTH_SHORT, // length
            gravity: ToastGravity.BOTTOM, // location
          );
          Navigator.of(context).pop();
        } else {
          BlocProvider.of<PlaylistsBloc>(context).add(
              AddNewVidoeToPlayList(videoPath: path, playListIndex: index));
          Fluttertoast.showToast(
            backgroundColor: lightBlue,
            textColor: pureWhite,
            msg: "Added Succesfully", // message
            toastLength: Toast.LENGTH_SHORT, // length
            gravity: ToastGravity.BOTTOM, // location
          );

          Navigator.of(context).pop();
        }
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      tileColor: bgShade,
      leading: const Icon(
        Icons.playlist_play,
        color: lightBlue,
      ),
      title: Text(
        playListVideos[index].playListName,
        style: const TextStyle(color: middleBlue),
      ),
    );
  }
}
