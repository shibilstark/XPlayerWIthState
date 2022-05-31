import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_player/application/video_info/video_info_bloc.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/functions.dart';

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
    final videoName = videoPath.split("/").last;

    final fodlerName = videoPath.split("/")[videoPath.split("/").length - 2];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: SizedBox(
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
                    return const Center(
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
                            context, "Conatining Folder", fodlerName),
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
  return Row(
    children: [
      SizedBox(
        width: 80,
        child: Text(
          key,
          style: const TextStyle(
              color: middleBlue, fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
      SizedBox(
        width: 10,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              ":",
              style: TextStyle(fontSize: 15, color: middleBlue),
            ),
          ],
        ),
      ),
      SizedBox(
          width: 220,
          child: Text(
            data,
            style: const TextStyle(
                fontSize: 15, color: middleBlue, fontStyle: FontStyle.italic),
          )),
    ],
  );
}
