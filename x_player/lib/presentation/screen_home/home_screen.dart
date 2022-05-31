// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_player/application/fetch_videos/vidoes_fetch.dart';
import 'package:x_player/application/video_info/video_info_bloc.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/styles.dart';
import 'package:x_player/player/player.dart';
import 'package:x_player/presentation/folder_view/folder_view.dart';
import 'package:x_player/presentation/screen_menu/screen_menu.dart';
import 'package:x_player/presentation/screen_playlists/screen_playlists.dart';
import 'package:x_player/presentation/screen_search/screen_search.dart';
import 'package:x_player/presentation/videos_view/videos_view.dart';

ValueNotifier<int> page = ValueNotifier(0);
ValueNotifier<int> tab = ValueNotifier(0);

// final GlobalKey<ScaffoldState> _key = GlobalKey();

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<VideoInfoBloc>(context).add(const GetLastPlayed());
    });
    folderList.notifyListeners();
    // final size = MediaQuery.of(context).size;

    return ValueListenableBuilder(
      valueListenable: page,
      builder: (BuildContext context, int index, _) {
        return DefaultTabController(
          length: 2,
          child: BlocBuilder<VideoInfoBloc, VideoInfoState>(
            builder: (context, state) {
              return Scaffold(
                // key: _key,
                // drawer: DrawerTab(),

                floatingActionButton:
                    page.value == 0 && state.lastPlayed != null
                        ? FloatingActionButton(
                            backgroundColor: middleBlue,
                            focusColor: pureWhite,
                            onPressed: () {
                              BlocProvider.of<VideoInfoBloc>(context)
                                  .add(const GetLastPlayed());

                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => LocalVideoPlayer(
                                      videoUrl: state.lastPlayed!)));

                              BlocProvider.of<VideoInfoBloc>(context).add(
                                  SetLastPlayed(lastPlayed: state.lastPlayed!));
                            },
                            // ignore: prefer_const_constructors
                            child: Icon(
                              Icons.play_arrow_rounded,
                              size: 40,
                            ),
                          )
                        : null,
                appBar: PreferredSize(
                  preferredSize: page.value == 0
                      ? const Size.fromHeight(90)
                      : const Size.fromHeight(55),
                  child: MainAppBar(title: "Home", page: page.value),
                ),
                bottomNavigationBar: const MyNavigationBar(),
                body: SafeArea(
                  child: page.value != 0
                      ? _pages[page.value]
                      : const TabBarView(
                          children: [FolderView(), VideosView()]),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

final _pages = [
  Container(),
  const ScreenPlayLists(),
  const ScreenMenu(),
];

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: page,
      builder: (BuildContext context, int index, _) {
        return SizedBox(
          height: 60,
          child: BottomNavigationBar(
              currentIndex: page.value,
              onTap: (value) {
                page.value = value;
              },
              selectedIconTheme: const IconThemeData(color: darkBlue, size: 30),
              unselectedIconTheme: const IconThemeData(
                color: middleBlue,
              ),
              selectedFontSize: 12,
              iconSize: 26,
              selectedItemColor: Colors.white,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.folder_outlined,
                  ),
                  label: "Home",
                  activeIcon: Icon(Icons.folder_rounded),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.playlist_play_outlined),
                  label: "Playlists",
                  activeIcon: Icon(Icons.playlist_play_rounded),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu_outlined),
                  label: "Menu",
                  activeIcon: Icon(
                    Icons.menu_rounded,
                  ),
                ),
              ]),
        );
      },
    );
  }
}

class MainAppBar extends StatelessWidget {
  final String title;
  final int page;
  const MainAppBar({Key? key, required this.title, required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: tab,
      builder: (BuildContext context, int index, _) {
        return AppBar(
          centerTitle: true,
          title: page == 0
              ? const Text(
                  "Home",
                  style: mainTitleStyle,
                )
              : page == 1
                  ? const Text(
                      "Favourites",
                      style: mainTitleStyle,
                    )
                  : page == 2
                      ? const Text(
                          "Playlists",
                          style: mainTitleStyle,
                        )
                      : page == 3
                          ? const Text(
                              "Menu",
                              style: mainTitleStyle,
                            )
                          : null,
          bottom: page == 0
              ? PreferredSize(
                  preferredSize: const Size.fromHeight(30),
                  child: Container(
                    height: 35,
                    color: pureWhite,
                    child: const TabBar(
                      tabs: [
                        Tab(
                          child: Text(
                            "Folders",
                            style: TextStyle(color: darkBlue, fontSize: 15),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Videos",
                            style: TextStyle(color: darkBlue, fontSize: 15),
                          ),
                        )
                      ],
                      indicatorColor: middleBlue,
                      indicatorWeight: 3,
                    ),
                  ),
                )
              : null,
          actions: [
            page == 0
                ? IconButton(
                    onPressed: () {
                      showSearch(context: context, delegate: Mysearch());
                    },
                    icon: const Icon(CupertinoIcons.search))
                : const SizedBox(),
          ],
        );
      },
    );
  }
}
