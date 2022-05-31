// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:x_player/application/favorites/favorites_bloc.dart';
import 'package:x_player/common/functions.dart';
import 'package:x_player/domain/models/favorites/model.dart';
import 'package:x_player/presentation/screen_inner_folder/screen_inner_folder.dart';
import 'package:x_player/presentation/widgets.dart';

class ScreenInnerFavorites extends StatelessWidget {
  final List<FavoritesModel> innerVideosList;
  final folderName;
  const ScreenInnerFavorites(
      {Key? key, required this.folderName, required this.innerVideosList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: CommonAppBar(title: folderName),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: BlocBuilder<FavoritesBloc, FavoritesState>(
            builder: (context, state) {
              if (state.favoritesList.isEmpty) {
                return const EmptyShow();
              }
              return ListView.separated(
                  itemBuilder: (context, index) {
                    final currentVideo = state.favoritesList[index].path;
                    return CommonInnerTile(
                      path: currentVideo,
                      index: index,
                      // index: index,
                    );
                  },
                  separatorBuilder: (context, index) => const Gap(
                        H: 10,
                      ),
                  itemCount: state.favoritesList.length);
            },
          ),
        ),
      ),
    );
  }
}
