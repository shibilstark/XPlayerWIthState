// ignore_for_file: prefer_const_constructors

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

class EmptyShow extends StatelessWidget {
  const EmptyShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "No Videos Found",
        style: TextStyle(color: lightBlue, fontSize: 16),
      ),
    );
  }
}

class EmptyFound extends StatelessWidget {
  const EmptyFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Empty",
        style: TextStyle(color: lightBlue, fontSize: 16),
      ),
    );
  }
}
