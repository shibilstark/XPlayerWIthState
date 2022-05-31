// ignore_for_file: must_be_immutable, unnecessary_null_comparison, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:x_player/application/playlist/playlists_bloc.dart';
import 'package:x_player/application/video_info/video_info_bloc.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/functions.dart';
import 'package:x_player/common/styles.dart';
import 'package:x_player/player/player.dart';
import 'package:x_player/presentation/widgets.dart';

class ScreenInnerPlayList extends StatelessWidget {
  final String folderName;
  final int folderIndex;
  const ScreenInnerPlayList(
      {Key? key, required this.folderName, required this.folderIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: CommonAppBar(title: folderName),
      ),
      body: BlocBuilder<PlaylistsBloc, PlaylistsState>(
        builder: (context, state) {
          if (state.playListVideos[folderIndex].currenPlayListVideos.isEmpty) {
            return const Center(
              child: EmptyShow(),
            );
          }
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  final path = state
                      .playListVideos[folderIndex].currenPlayListVideos[index];
                  return InnerPlayListTele(
                    path: path,
                    index: index,
                    playListfolderIndex: folderIndex,
                  );
                },
                separatorBuilder: (context, index) => const Gap(
                      H: 5,
                    ),
                itemCount: state
                    .playListVideos[folderIndex].currenPlayListVideos.length),
          );
        },
      ),
    );
  }
}

class InnerPlayListTele extends StatelessWidget {
  final String path;
  final int index;
  final int playListfolderIndex;

  InnerPlayListTele(
      {Key? key,
      required this.path,
      required this.index,
      required this.playListfolderIndex})
      : super(key: key);

  ValueNotifier<String> currentThumbnail = ValueNotifier("");

  getCurrentThumbnail() async {
    final thumbnail = await VideoThumbnail.thumbnailFile(
      video: path,
      thumbnailPath: (await getTemporaryDirectory()).path,
      imageFormat: ImageFormat.WEBP,
    );

    currentThumbnail.value = thumbnail!;
    currentThumbnail.notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      getCurrentThumbnail();
    });
    final videoName = path.split("/").last;

    return ListTile(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => LocalVideoPlayer(videoUrl: path)));

        BlocProvider.of<VideoInfoBloc>(context)
            .add(SetLastPlayed(lastPlayed: path));
      },
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(3),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            ValueListenableBuilder(
              valueListenable: currentThumbnail,
              builder: (BuildContext context, String thumb, _) {
                return SizedBox(
                    height: 50,
                    width: 75,
                    child: currentThumbnail.value == "" ||
                            currentThumbnail.value == null
                        ? Image.asset("assets/img/thumnail-alt.png")
                        : Image.file(
                            File(currentThumbnail.value),
                            fit: BoxFit.cover,
                          ));
              },
            ),
          ],
        ),
      ),
      title: Text(
        videoName,
        style: tileTitleStyle.copyWith(overflow: TextOverflow.ellipsis),
      ),
      contentPadding:
          const EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 0),
      trailing: IconButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    content: const Text(
                      "Do you want to remove this video? ",
                      style: TextStyle(
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
                            BlocProvider.of<PlaylistsBloc>(context)
                                .add(DeleteVideoFromPlaylist(
                              playListfolderIndex: playListfolderIndex,
                              currentVideoIndex: index,
                            ));

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
        icon: const Icon(
          Icons.delete_outlined,
          color: lightBlue,
        ),
      ),
    );
  }
}
