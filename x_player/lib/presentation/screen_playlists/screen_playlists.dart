import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_player/application/favorites/favorites_bloc.dart';
import 'package:x_player/application/playlist/playlists_bloc.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/presentation/screen_playlists/widgets/add_new_playlist.dart';
import 'package:x_player/presentation/screen_playlists/widgets/favorite_folder_tile.dart';
import 'package:x_player/presentation/screen_playlists/widgets/playlist_tile.dart';

class ScreenPlayLists extends StatelessWidget {
  const ScreenPlayLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<FavoritesBloc>(context).add(const GetAllFavoriteVideos());
      BlocProvider.of<PlaylistsBloc>(context).add(const GetAllPlayLists());
    });

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: lightBlue,
        foregroundColor: pureWhite,
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    content: AddNewPlayListWidget(),
                  ));
        },
        child: const Icon(Icons.playlist_add),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          children: [
            // AddPlayListTile(),
            const FavoriteFolderTile(),
            Expanded(child: BlocBuilder<PlaylistsBloc, PlaylistsState>(
              builder: (context, state) {
                return ListView.separated(
                    itemBuilder: (context, index) {
                      return PlayListTile(
                        index: index,
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(
                          thickness: 0.4,
                          color: bgShade,
                          height: 0,
                        ),
                    itemCount: state.playListVideos.length);
              },
            ))
          ],
        ),
      ),
    );
  }
}
