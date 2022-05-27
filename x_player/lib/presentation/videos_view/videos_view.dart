import 'package:flutter/material.dart';
import 'package:x_player/common/functions.dart';

class VideosView extends StatelessWidget {
  const VideosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: ListView.separated(
          itemBuilder: (context, index) => Container(
                height: 60,
                width: double.infinity,
                color: Colors.accents[index ~/ 30],
              ),
          separatorBuilder: (context, index) => Gap(
                H: 10,
              ),
          itemCount: 30),
    );
  }
}
