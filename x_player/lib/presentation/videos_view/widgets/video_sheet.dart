// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:x_player/application/favorites/favorites_bloc.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/functions.dart';
import 'package:x_player/domain/models/favorites/model.dart';
import 'package:x_player/presentation/videos_view/widgets/play_list_view.dart';
import 'package:x_player/presentation/videos_view/widgets/video_properties.dart';

class VideoSheet extends StatelessWidget {
  final int index;
  final String videoPath;
  const VideoSheet({Key? key, required this.videoPath, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: double.infinity,
      height: height * 0.28,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        child: ListView(children: [
          const Text(
            "VideoName",
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              color: darkBlue,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Divider(
            thickness: 2,
            color: lightBlue,
          ),
          const Gap(
            H: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BlocBuilder<FavoritesBloc, FavoritesState>(
                builder: (context, state) {
                  bool found = false;
                  ValueNotifier<Icon> favIcon = ValueNotifier(Icon(
                    Icons.favorite_border_outlined,
                    size: width * 0.08,
                    color: lightBlue,
                  ));
                  for (var item in state.favoritesList) {
                    if (item.path == videoPath) {
                      found = true;
                      break;
                    } else {
                      continue;
                    }
                  }

                  if (found) {
                    favIcon.value = Icon(
                      Icons.favorite_rounded,
                      size: width * 0.08,
                      color: darkBlue,
                    );

                    favIcon.notifyListeners();
                  } else {
                    favIcon.value = Icon(
                      Icons.favorite_border_outlined,
                      size: width * 0.08,
                      color: lightBlue,
                    );
                    favIcon.notifyListeners();
                  }

                  return ValueListenableBuilder(
                    valueListenable: favIcon,
                    builder: (BuildContext context, Icon icon, _) {
                      return GestureDetector(
                        onTap: () {
                          final model = FavoritesModel(path: videoPath);
                          if (!found) {
                            BlocProvider.of<FavoritesBloc>(context)
                                .add(AddToFav(model: model));

                            Fluttertoast.showToast(
                              backgroundColor: lightBlue,
                              textColor: pureWhite,
                              msg: "Video Added to Favorites", // message
                              toastLength: Toast.LENGTH_SHORT, // length
                              gravity: ToastGravity.BOTTOM, // location
                            );
                          } else {
                            BlocProvider.of<FavoritesBloc>(context)
                                .add(removeFromFav(model: model, index: index));

                            Fluttertoast.showToast(
                              backgroundColor: lightBlue,
                              textColor: pureWhite,
                              msg: "Video Removed From Favourites", // message
                              toastLength: Toast.LENGTH_SHORT, // length
                              gravity: ToastGravity.BOTTOM, // location
                            );
                          }

                          Navigator.of(context).pop();
                        },
                        child: Container(
                          width: width * 0.15,
                          height: (width * 0.15),
                          decoration: BoxDecoration(
                              color: bgShade,
                              border: Border.all(
                                width: 0.5,
                                color: lightBlue,
                              ),
                              borderRadius:
                                  BorderRadius.circular(width * 0.02)),
                          child: favIcon.value,
                        ),
                      );
                    },
                  );
                },
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  showModalBottomSheet(
                      isDismissible: true,
                      // isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        final height = MediaQuery.of(context).size.height;
                        return PlayListView(
                          height: height,
                          path: videoPath,
                        );
                      });
                },
                child: Container(
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
              ),
              GestureDetector(
                onTap: () {
                  shareFile(file: videoPath);
                  Navigator.of(context).pop();
                },
                child: Container(
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
              )
            ],
          ),
          const Gap(
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
              child: const Text(
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
