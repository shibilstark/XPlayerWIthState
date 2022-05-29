import 'package:flutter/material.dart';
import 'package:x_player/common/functions.dart';
import 'package:x_player/presentation/videos_view/videos_view.dart';
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
        preferredSize: Size.fromHeight(55),
        child: CommonAppBar(title: folderName),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: ListView.separated(
              itemBuilder: (context, index) {
                final currentVideo = innerVideosList[index];
                return VideoListTile(
                  path: currentVideo,
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
