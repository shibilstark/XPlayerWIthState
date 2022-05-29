import 'package:flutter/material.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/styles.dart';

class CommonAppBar extends StatelessWidget {
  final String title;
  const CommonAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.keyboard_backspace_rounded,
              color: pureWhite,
              size: 30,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          iconTheme: const IconThemeData(color: pureWhite),
          backgroundColor: darkBlue,
          // titleSpacing: -5,
          title: Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                title,
                style: mainTitleStyle,
              )),
        ));
  }
}
