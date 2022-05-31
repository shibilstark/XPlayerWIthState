// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:x_player/application/fetch_videos/vidoes_fetch.dart';
import 'package:x_player/application/video_info/video_info_bloc.dart';
import 'package:x_player/common/functions.dart';
import 'package:x_player/common/styles.dart';
import 'package:x_player/player/player.dart';
import 'package:x_player/presentation/videos_view/widgets/video_sheet.dart';

class VideosView extends StatelessWidget {
  const VideosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    allVideos.notifyListeners();
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: ValueListenableBuilder(
          valueListenable: allVideos,
          builder: (BuildContext context, List<String> allVideos, _) {
            return ListView.separated(
                itemBuilder: (context, index) {
                  final currentVideo = allVideos[index];

                  return VideoListTile(
                    index: index,
                    path: currentVideo,
                    // index: index,
                  );
                },
                separatorBuilder: (context, index) => const Gap(
                      H: 10,
                    ),
                itemCount: allVideos.length);
          },
        ));
  }
}

class VideoListTile extends StatelessWidget {
  final String path;
  final int index;

  const VideoListTile({Key? key, required this.path, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final videoName = path.split("/").last;

    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(3),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            SizedBox(
                height: 50,
                width: 75,
                child: Image.asset("assets/img/thumnail-alt.png")),
          ],
        ),
      ),
      title: Text(
        videoName,
        style: tileTitleStyle.copyWith(overflow: TextOverflow.ellipsis),
      ),
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
