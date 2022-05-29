// import 'package:flutter/material.dart';
// import 'package:x_player/application/fetch_videos/vidoes_fetch.dart';
// import 'package:x_player/common/colors.dart';
// import 'package:x_player/common/functions.dart';
// import 'package:x_player/presentation/screen_home/home_screen.dart';

// class ScreenSplash extends StatefulWidget {
//   const ScreenSplash({Key? key}) : super(key: key);

//   @override
//   State<ScreenSplash> createState() => _ScreenSplashState();
// }

// class _ScreenSplashState extends State<ScreenSplash> {
//   @override
//   void initState() {
//     fetchVideosFromStorage();

//     Navigator.of(context)
//         .pushReplacement(MaterialPageRoute(builder: (ctx) => ScreenHome()));
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;

//     return Scaffold(
//         body: SafeArea(
//       child: Container(
//         color: darkBlue,
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: Image.asset(
//                   "assets/img/main_logo_adjusted.png",
//                   width: size.width * 0.3,
//                 ),
//               ),
//               const Gap(
//                 H: 20,
//               ),
//               Text(
//                 "Loading...",
//                 style: TextStyle(
//                     color: lightBlue, fontSize: (size.width * 0.3) * 0.1),
//               )
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:x_player/application/fetch_videos/vidoes_fetch.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/functions.dart';
import 'package:x_player/presentation/screen_home/home_screen.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen.withScreenFunction(
          backgroundColor: darkBlue,
          splashIconSize: 150,
          duration: 2000,
          splashTransition: SplashTransition.fadeTransition,
          splash: const SplashBody(),
          screenFunction: () async {
            await fetchVideosFromStorage();

            return ScreenHome();
          }),
    );
  }
}

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Center(
      child: Container(
        color: darkBlue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
    );
  }
}
