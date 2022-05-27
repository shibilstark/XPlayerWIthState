import 'package:flutter/material.dart';
import 'package:x_player/common/functions.dart';

class FolderView extends StatelessWidget {
  const FolderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: SizedBox(
        child: ListView.separated(
            itemBuilder: (context, index) => Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.accents[index ~/ 4],
                ),
            separatorBuilder: (context, index) => Gap(
                  H: 10,
                ),
            itemCount: 30),
      ),
    );
  }
}
