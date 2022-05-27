import 'package:flutter/material.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/functions.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: darkBlue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              //   height: (size.width * 0.3) / 1.5,
              //   width: size.width * 0.3,
              //   decoration: BoxDecoration(
              //     color: pureWhite,
              //     borderRadius: BorderRadius.circular((size.width * 0.3) * 0.1),
              //   ),
              //   child: Center(
              //       child: Icon(
              //     Icons.play_arrow_rounded,
              //     size: (size.width * 0.3) * 0.7,
              //     color: darkBlue,
              //   )),
              // ),

              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/img/main_logo_adjusted.png",
                  width: size.width * 0.3,
                ),
              ),
              const Gap(
                H: 20,
              ),
              Text(
                "Loading...",
                style: TextStyle(
                    color: lightBlue, fontSize: (size.width * 0.3) * 0.1),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
