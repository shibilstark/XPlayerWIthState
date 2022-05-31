import 'package:flutter/material.dart';
import 'package:x_player/common/colors.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: pureWhite,
      body: Center(
        child: Container(
          color: darkBlue,
          // height: 150,
          // width: 350,
          child: Container(
            color: middleBlue,
            child: const ListTile(
              tileColor: lightBlue,
              leading: Icon(
                Icons.folder_outlined,
                color: Colors.white70,
              ),
              title: Text(
                "halloTitle",
                style: TextStyle(color: Colors.white70),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TestContainer extends StatelessWidget {
  const TestContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Center(
      child: Container(
        color: darkBlue,
      ),
    ));
  }
}
