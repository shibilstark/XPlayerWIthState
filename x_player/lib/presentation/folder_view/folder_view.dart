import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/functions.dart';
import 'package:x_player/common/styles.dart';

class FolderView extends StatelessWidget {
  const FolderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: SizedBox(
        child: ListView.separated(
            itemBuilder: (context, index) => FolderListTile(),
            separatorBuilder: (context, index) => Divider(
                  thickness: 0.5,
                  height: 5,
                ),
            itemCount: 30),
      ),
    );
  }
}

class FolderListTile extends StatelessWidget {
  const FolderListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: ListTile(
        tileColor: pureWhite,
        // tileColor: Color.fromARGB(69, 176, 200, 240),
        leading: Icon(
          Icons.folder,
          size: 50,
          color: lightBlue,
        ),

        title: Text(
          "Folder Name",
          style: tileTitleStyle,
        ),

        subtitle: Text(
          "Count",
          style: tileSubTitleStyle,
        ),
      ),
    );
  }
}
