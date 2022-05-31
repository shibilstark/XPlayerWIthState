// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_player/application/playlist/playlists_bloc.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/functions.dart';

TextEditingController playListtextController = TextEditingController();

class AddNewPlayListWidget extends StatelessWidget {
  AddNewPlayListWidget({Key? key}) : super(key: key);

  ValueNotifier<bool> emptyField = ValueNotifier(false);
  ValueNotifier<bool> exist = ValueNotifier(false);
  _disapper() async {
    await Future.delayed(const Duration(seconds: 2));

    emptyField.value = false;
    exist.value = false;

    emptyField.notifyListeners();
    exist.notifyListeners();
  }

  _showEmpty() {
    emptyField.value = true;
    emptyField.notifyListeners();
  }

  _showExist() {
    exist.value = true;

    exist.notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            controller: playListtextController,
            style: const TextStyle(
              color: middleBlue,
            ),
            cursorColor: lightBlue,
            decoration: const InputDecoration(
                filled: true,
                fillColor: bgShade,
                border: InputBorder.none,
                label: Text("Playlist name..."),
                labelStyle: TextStyle(
                  color: middleBlue,
                )),
          ),
          const Gap(
            H: 5,
          ),
          SizedBox(
            height: 40,
            child: Column(
              children: [
                ValueListenableBuilder(
                  valueListenable: emptyField,
                  builder: (BuildContext context, bool emp, _) {
                    return Visibility(
                      visible: emp,
                      child: const Text(
                        "Field can't be empty",
                        style: TextStyle(color: Colors.red, fontSize: 12),
                      ),
                    );
                  },
                ),
                ValueListenableBuilder(
                  valueListenable: exist,
                  builder: (BuildContext context, bool ex, _) {
                    return Visibility(
                      visible: ex,
                      child: const Text(
                        "Playlist already exist",
                        style: TextStyle(color: Colors.red, fontSize: 12),
                      ),
                    );
                  },
                ),
                // Text(
                //   "Playlist already exist",
                //   style: TextStyle(color: Colors.red, fontSize: 12),
                // ),
              ],
            ),
          ),
          BlocBuilder<PlaylistsBloc, PlaylistsState>(
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        playListtextController.clear();
                      },
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                          color: lightBlue,
                        ),
                      )),
                  TextButton(
                      onPressed: () {
                        bool _found = false;

                        for (var item in state.playListVideos) {
                          if (item.playListName ==
                              playListtextController.value.text.trim()) {
                            _found = true;
                            break;
                          } else {
                            continue;
                          }
                        }

                        if (playListtextController.value.text.trim().isEmpty) {
                          _showEmpty();
                          _disapper();
                          playListtextController.clear();
                        } else if (playListtextController.value.text.trim() ==
                                "favourites" ||
                            playListtextController.value.text.trim() ==
                                "Favourites" ||
                            _found) {
                          _showExist();
                          _disapper();
                          playListtextController.clear();
                        } else {
                          BlocProvider.of<PlaylistsBloc>(context).add(
                              AddNewPlaylistFolder(
                                  folderName: playListtextController.value.text
                                      .trim()));

                          Navigator.of(context).pop();
                          playListtextController.clear();
                        }
                      },
                      child: const Text(
                        "Create",
                        style: TextStyle(
                          color: lightBlue,
                        ),
                      )),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
