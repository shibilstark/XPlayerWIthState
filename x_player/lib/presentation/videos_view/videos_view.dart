import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:x_player/application/fetch_videos/vidoes_fetch.dart';
import 'package:x_player/application/video_info/video_info_bloc.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/functions.dart';
import 'package:x_player/common/styles.dart';
import 'package:x_player/main.dart';

class VideosView extends StatelessWidget {
  const VideosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: ValueListenableBuilder(
          valueListenable: allVideos,
          builder: (BuildContext context, List<String> allVideos, _) {
            return ListView.separated(
                itemBuilder: (context, index) {
                  final currentVideo = allVideos[index];

                  return VideoListTile(
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
  // final int index;

  VideoListTile({Key? key, required this.path}) : super(key: key);

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
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(3),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            ValueListenableBuilder(
              valueListenable: currentThumbnail,
              builder: (BuildContext context, String thumb, _) {
                return Container(
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
                  ));
        },
        icon: const Icon(
          Icons.more_vert_rounded,
        ),
      ),
    );
  }
}

class VideoSheet extends StatelessWidget {
  final String videoPath;
  const VideoSheet({Key? key, required this.videoPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      height: height * 0.28,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        child: ListView(children: [
          Text(
            "VideoName",
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              color: darkBlue,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Divider(
            thickness: 2,
            color: lightBlue,
          ),
          Gap(
            H: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: width * 0.15,
                height: (width * 0.15),
                decoration: BoxDecoration(
                    color: bgShade,
                    border: Border.all(
                      width: 0.5,
                      color: lightBlue,
                    ),
                    borderRadius: BorderRadius.circular(width * 0.02)),
                child: Icon(
                  Icons.favorite_border_outlined,
                  size: width * 0.08,
                  color: lightBlue,
                ),
              ),
              Container(
                width: width * 0.15,
                height: (width * 0.15),
                decoration: BoxDecoration(
                    color: bgShade,
                    border: Border.all(
                      width: 0.5,
                      color: lightBlue,
                    ),
                    borderRadius: BorderRadius.circular(width * 0.02)),
                child: Icon(
                  Icons.playlist_add,
                  size: width * 0.08,
                  color: lightBlue,
                ),
              ),
              Container(
                width: width * 0.15,
                height: (width * 0.15),
                decoration: BoxDecoration(
                    color: bgShade,
                    border: Border.all(
                      width: 0.5,
                      color: lightBlue,
                    ),
                    borderRadius: BorderRadius.circular(width * 0.02)),
                child: Icon(
                  Icons.share,
                  size: width * 0.08,
                  color: lightBlue,
                ),
              ),
            ],
          ),
          Gap(
            H: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();

              showModalBottomSheet(
                  elevation: 5,
                  isDismissible: true,
                  context: context,
                  builder: (context) => VideoProperties(
                        videoPath: videoPath,
                      ));
            },
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: middleBlue,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                "Properties",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: pureWhite,
                  fontSize: 18,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class VideoProperties extends StatelessWidget {
  final String videoPath;
  const VideoProperties({Key? key, required this.videoPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<VideoInfoBloc>(context)
          .add(GetVideoInfo(videoPath: videoPath));
    });

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final videoName = videoPath.split("/").last;

    final fodlerName = videoPath.split("/")[videoPath.split("/").length - 2];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Container(
          height: height / 2,
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Properties",
                style: TextStyle(
                    color: darkBlue, fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const Divider(
                thickness: 2,
                color: lightBlue,
              ),
              BlocBuilder<VideoInfoBloc, VideoInfoState>(
                builder: (context, state) {
                  if (state.isLoading || state.info == null) {
                    return Center(
                      child: CircularProgressIndicator(color: lightBlue),
                    );
                  } else {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        videoPropertiesTexture(
                            context, "Video Name", videoName),
                        const Gap(
                          H: 5,
                        ),
                        videoPropertiesTexture(
                            context, "Conatining Folder", "${fodlerName}"),
                        const Gap(
                          H: 5,
                        ),
                        videoPropertiesTexture(
                          context,
                          "Video Path",
                          state.info!.path,
                        ),
                        const Gap(
                          H: 5,
                        ),
                        videoPropertiesTexture(
                          context,
                          "Dimension",
                          "${state.info!.height}  x  ${state.info!.width}",
                        ),
                        const Gap(
                          H: 5,
                        ),
                        videoPropertiesTexture(
                          context,
                          "Duration",
                          "${state.info!.duration! ~/ (1000 * 60)} Minutes",
                        ),
                        const Gap(
                          H: 5,
                        ),
                        videoPropertiesTexture(
                          context,
                          "Size ",
                          "${sizeReduce(mb: state.info!.filesize! ~/ (1000 * 1000))}",
                        ),
                        const Gap(
                          H: 5,
                        ),
                        videoPropertiesTexture(
                          context,
                          "Mimetype",
                          "${state.info!.mimetype}",
                        ),
                      ],
                    );
                  }
                },
              )
            ],
          )),
    );
  }
}

videoPropertiesTexture(BuildContext context, String key, var data) {
  return Container(
      child: Row(
    children: [
      Container(
        width: 80,
        child: Text(
          key,
          style: const TextStyle(
              color: middleBlue, fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
      Container(
        width: 10,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              ":",
              style: TextStyle(fontSize: 15, color: middleBlue),
            ),
          ],
        ),
      ),
      Container(
          width: 220,
          child: Text(
            data,
            style: const TextStyle(
                fontSize: 15, color: middleBlue, fontStyle: FontStyle.italic),
          )),
    ],
  ));
}
