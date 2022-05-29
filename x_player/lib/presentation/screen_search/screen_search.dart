import 'package:flutter/material.dart';
import 'package:x_player/application/fetch_videos/vidoes_fetch.dart';
import 'package:x_player/common/functions.dart';
import 'package:x_player/presentation/videos_view/videos_view.dart';

class Mysearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final listItems = query.isEmpty
        ? allVideos.value
        : allVideos.value
            .where((element) => element
                .split("/")
                .last
                .toLowerCase()
                .contains(query.toLowerCase().toString()))
            .toList();

    return listItems.isEmpty
        ? const Center(child: Text("No Data Found!"))
        : Container(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.separated(
                  separatorBuilder: (context, index) => Gap(
                        H: 5,
                      ),
                  itemCount: listItems.length,
                  itemBuilder: (context, index) {
                    final path = listItems[index];

                    return VideoListTile(
                      path: path,
                    );
                  }),
            ),
          );
  }
}
