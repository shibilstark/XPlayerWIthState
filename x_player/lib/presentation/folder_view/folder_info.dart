// ignore_for_file: unnecessary_string_interpolations, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:x_player/common/colors.dart';

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
            const Text(
              "Properties",
              style: TextStyle(color: darkBlue, fontSize: 17),
            ),
            const Divider(
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
  return Row(
    children: [
      SizedBox(
        width: width * 0.2,
        child: Text(
          key,
          style: const TextStyle(fontSize: 16),
        ),
      ),
      SizedBox(
        width: width * 0.0,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              ":",
              style: TextStyle(
                  fontSize: 15, color: darkBlue, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      SizedBox(
          width: width * 0.51,
          child: Text(
            data,
            style: const TextStyle(
                fontSize: 15, color: darkBlue, fontStyle: FontStyle.italic),
          )),
    ],
  );
}
