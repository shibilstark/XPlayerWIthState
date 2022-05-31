import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_player/application/favorites/favorites_bloc.dart';
import 'package:x_player/application/fetch_videos/vidoes_fetch.dart';
import 'package:x_player/application/playlist/playlists_bloc.dart';
import 'package:x_player/application/video_info/video_info_bloc.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/functions.dart';
import 'package:x_player/presentation/widgets.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SettingsBody(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: CommonAppBar(title: "Settings"),
      ),
    );
  }
}

class SettingsBody extends StatelessWidget {
  const SettingsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double lineHeight = 35;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            width: double.infinity,
            decoration: BoxDecoration(
                // color: const Color.fromARGB(69, 114, 135, 168),
                color: const Color.fromARGB(69, 176, 200, 240),
                borderRadius: BorderRadius.circular(10)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              smallTexture(context, "Refresh"),
              SizedBox(
                height: lineHeight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Refresh Library",
                      style: TextStyle(
                        color: middleBlue,
                      ),
                    ),
                    TextButton(
                        onPressed: () async {
                          showDialog(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                    content: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Refreshing Video Libraries",
                                            style: TextStyle(
                                              color: darkBlue,
                                            ),
                                          ),
                                          SizedBox(
                                              width: 20,
                                              height: 20,
                                              child: CircularProgressIndicator(
                                                color: darkBlue,
                                              ))
                                        ]),
                                  ));

                          await Future.delayed(const Duration(seconds: 1));

                          fetchVideosFromStorage();
                          createFolderView();

                          BlocProvider.of<FavoritesBloc>(context)
                              .add(const GetAllFavoriteVideos());
                          BlocProvider.of<PlaylistsBloc>(context)
                              .add(const GetAllPlayLists());
                          BlocProvider.of<VideoInfoBloc>(context)
                              .add(const GetLastPlayed());

                          Navigator.of(context).pop();
                        },
                        child: const Text("clear",
                            style: TextStyle(color: middleBlue)))
                  ],
                ),
              ),
            ]),
          ),
          const Gap(
            H: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            width: double.infinity,
            decoration: BoxDecoration(
                // color: const Color.fromARGB(69, 114, 135, 168),
                color: const Color.fromARGB(69, 176, 200, 240),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                smallTexture(context, "General"),
                SizedBox(
                  height: lineHeight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Clear Favorites",
                        style: TextStyle(
                          color: middleBlue,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      backgroundColor: pureWhite,
                                      contentPadding: const EdgeInsets.all(40),
                                      title: const Text(
                                        "Do you want to clear complete Favorites?",
                                        style: TextStyle(
                                            color: middleBlue, fontSize: 18),
                                        textAlign: TextAlign.start,
                                      ),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: middleBlue),
                                            )),
                                        TextButton(
                                            onPressed: () {
                                              BlocProvider.of<FavoritesBloc>(
                                                      context)
                                                  .add(
                                                      const ClearAllFavorites());

                                              // clearAllFavoritesList();
                                              // refreshFavoritesList();
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text(
                                              "Clear",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: middleBlue),
                                            )),
                                      ],
                                    ));
                          },
                          child: const Text("clear",
                              style: TextStyle(color: middleBlue)))
                    ],
                  ),
                ),
                SizedBox(
                  height: lineHeight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Clear Playlists",
                        style: TextStyle(color: middleBlue),
                      ),
                      TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      backgroundColor: pureWhite,
                                      contentPadding: const EdgeInsets.all(40),
                                      title: const Text(
                                        "Do you want to clear Complete Playlists?",
                                        style: TextStyle(
                                            color: middleBlue, fontSize: 18),
                                        textAlign: TextAlign.start,
                                      ),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: middleBlue),
                                            )),
                                        TextButton(
                                            onPressed: () {
                                              BlocProvider.of<PlaylistsBloc>(
                                                      context)
                                                  .add(
                                                      const clearAllPlaylist());

                                              Navigator.of(context).pop();
                                            },
                                            child: const Text(
                                              "Clear",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: middleBlue),
                                            )),
                                      ],
                                    ));
                          },
                          child: const Text("clear",
                              style: TextStyle(color: middleBlue)))
                    ],
                  ),
                ),
                SizedBox(
                  height: lineHeight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Clear Last Played",
                        style: TextStyle(color: middleBlue),
                      ),
                      TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      backgroundColor: pureWhite,
                                      contentPadding: const EdgeInsets.all(40),
                                      title: const Text(
                                        "Do you want to clear Last Played ?",
                                        style: TextStyle(
                                            color: middleBlue, fontSize: 18),
                                        textAlign: TextAlign.start,
                                      ),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: middleBlue),
                                            )),
                                        TextButton(
                                            onPressed: () {
                                              BlocProvider.of<VideoInfoBloc>(
                                                      context)
                                                  .add(const ClearLastPlayed());
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text(
                                              "Clear",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: middleBlue),
                                            )),
                                      ],
                                    ));
                          },
                          child: const Text("clear",
                              style: TextStyle(color: middleBlue)))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

smallTexture(BuildContext context, String data) {
  double _width = MediaQuery.of(context).size.width;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        data,
        style: TextStyle(color: lightBlue, fontSize: _width * 0.03),
      ),
      const Gap(
        H: 5,
      )
    ],
  );
}
