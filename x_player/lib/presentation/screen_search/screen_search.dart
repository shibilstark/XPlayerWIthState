import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/functions.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(151, 176, 199, 240),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: lightBlue, borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      SizedBox(
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.keyboard_backspace)),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 40,
                          child: CupertinoTextField(
                            placeholderStyle:
                                TextStyle(color: pureWhite.withOpacity(0.7)),
                            placeholder: "Search videos...",
                            onChanged: (text) {},
                            cursorColor: middleBlue,
                            // textAlign: TextAlign.center,
                            padding: EdgeInsets.symmetric(horizontal: 0),
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: darkBlue,
                            ),
                            decoration: BoxDecoration(
                                color: lightBlue,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(
                  H: 20,
                ),
                Expanded(
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
