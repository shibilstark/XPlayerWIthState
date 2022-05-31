// ignore_for_file: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member, prefer_typing_uninitialized_variables, must_be_immutable, unnecessary_null_comparison

import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:x_player/application/video_info/video_info_bloc.dart';
import 'package:x_player/common/functions.dart';
import 'package:x_player/common/styles.dart';
import 'package:x_player/player/player.dart';
import 'package:x_player/presentation/videos_view/widgets/video_sheet.dart';
import 'package:x_player/presentation/widgets.dart';

class ScreenInnerFolder extends StatelessWidget {
  final innerVideosList;
  final folderName;
  const ScreenInnerFolder(
      {Key? key, required this.folderName, required this.innerVideosList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: CommonAppBar(title: folderName),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: ListView.separated(
              itemBuilder: (context, index) {
                final currentVideo = innerVideosList[index];
                return CommonInnerTile(
                  path: currentVideo,
                  index: index,
                  // index: index,
                );
              },
              separatorBuilder: (context, index) => const Gap(
                    H: 10,
                  ),
              itemCount: innerVideosList.length),
        ),
      ),
    );
  }
}

class CommonInnerTile extends StatelessWidget {
  final String path;
  final int index;

  CommonInnerTile({Key? key, required this.path, required this.index})
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
      onLongPress: () {
        showModalBottomSheet(
            elevation: 5,
            isDismissible: true,
            context: context,
            builder: (context) => VideoSheet(
                  videoPath: path,
                  index: index,
                ));
      },
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
          showModalBottomSheet(
              elevation: 5,
              isDismissible: true,
              context: context,
              builder: (context) => VideoSheet(
                    videoPath: path,
                    index: index,
                  ));
        },
        icon: const Icon(
          Icons.more_vert_rounded,
        ),
      ),
    );
  }
}
