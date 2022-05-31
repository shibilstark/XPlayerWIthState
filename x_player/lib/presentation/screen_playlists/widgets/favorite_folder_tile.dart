import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_player/application/favorites/favorites_bloc.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/styles.dart';
import 'package:x_player/presentation/screen_inner_favorites/screen_inner_favorites.dart';

class FavoriteFolderTile extends StatelessWidget {
  const FavoriteFolderTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesBloc, FavoritesState>(
      builder: (context, state) {
        return Card(
          elevation: 0.5,
          child: ListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),

            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => ScreenInnerFavorites(
                      folderName: "Favourites",
                      innerVideosList: state.favoritesList)));
            },
            onLongPress: () {},
            tileColor: pureWhite,
            // tileColor: Color.fromARGB(69, 176, 200, 240),
            leading: Stack(
              alignment: Alignment.center,
              children: const [
                Icon(
                  Icons.folder,
                  size: 50,
                  color: lightBlue,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Icon(
                    Icons.favorite_rounded,
                    size: 25,
                    color: bgShade,
                  ),
                ),
              ],
            ),

            title: const Text(
              "Favorites",
              style: tileTitleStyle,
            ),

            subtitle: Text(
              " ${state.favoritesList.length} files",
              style: tileSubTitleStyle,
            ),
          ),
        );
      },
    );
  }
}
