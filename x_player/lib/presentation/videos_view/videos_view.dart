import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_player/application/fetch/fetch_bloc.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/functions.dart';
import 'package:x_player/common/styles.dart';

class VideosView extends StatelessWidget {
  const VideosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return VidoeListTile();
            },
            separatorBuilder: (context, index) => Gap(
                  H: 10,
                ),
            itemCount: 30));
  }
}

class VidoeListTile extends StatelessWidget {
  const VidoeListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(3),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              color: lightBlue,
              height: 50,
              width: 75,
              child: Image.asset("assets/img/thumnail-alt.png"),
            ),
            Container(
              color: smoothie,
              padding: EdgeInsets.all(2),
              child: Text(
                "Duration",
                style: TextStyle(fontSize: 11, color: pureWhite),
              ),
            )
          ],
        ),
      ),
      title: Text(
        "Video Name",
        style: tileTitleStyle,
      ),
      contentPadding: EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 0),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.more_vert_rounded,
        ),
      ),
    );
  }
}
