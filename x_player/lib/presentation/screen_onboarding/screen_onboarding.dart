// ignore_for_file: constant_identifier_names, prefer_final_fields, must_be_immutable, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/functions.dart';
import 'package:x_player/presentation/screen_splash/screen_splash.dart';

const SAVE_KEY = "OneceLogged";

class CheckWidget extends StatelessWidget {
  const CheckWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      await checkStatus(context);
    });
    return Container();
  }
}

checkStatus(BuildContext context) async {
  final sharedPreferences = await SharedPreferences.getInstance();

  final onceChecked = sharedPreferences.getBool(SAVE_KEY);

  if (onceChecked == null || onceChecked == false) {
    // pushToScreen(context: context, page: OnboardScreen());
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ScreenOnboarding()));
  } else {
    Navigator.of(context).pushReplacement(
        // ignore: prefer_const_constructors
        MaterialPageRoute(builder: (context) => ScreenSplash()));
  }
}

setStatus() async {
  final _sharedPrefs = await SharedPreferences.getInstance();
  await _sharedPrefs.setBool(SAVE_KEY, true);
}

enum pageType { normal, last }

class ScreenOnboarding extends StatelessWidget {
  ScreenOnboarding({Key? key}) : super(key: key);

  ValueNotifier<int> _pageValue = ValueNotifier(0);

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      await askPermission();
    });
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          onPageChanged: ((value) {
            _pageValue.value = value;
            _pageValue.notifyListeners();
          }),
          controller: _controller,
          children: const [
            SimpleUiWidget(
              img: "assets/img/simple.png",
              title: "Simple UI,\nEasy To Use",
              bg: darkBlue,
            ),
            SimpleUiWidget(
              img: "assets/img/fav.png",
              title: "Favourites Made\nSimple",
              bg: middleBlue,
            ),
            SimpleUiWidget(
              img: "assets/img/playlist.png",
              title: "Create PlayList\nEasily",
              bg: lightBlue,
            ),
          ],
        ),
      ),
      bottomSheet: ValueListenableBuilder(
        valueListenable: _pageValue,
        builder: (BuildContext context, int currentPage, _) {
          return Container(
            color: bgShade,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 80,
            child: _pageValue.value == 2
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          await setStatus();
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ScreenSplash()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 150,
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 15,
                          ),
                          decoration: BoxDecoration(
                              color: middleBlue,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text(
                            "Get Started",
                            style: TextStyle(
                                color: pureWhite,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ),
                      )
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        TextButton(
                            onPressed: () {
                              _controller.jumpToPage(2);
                            },
                            child: const Text(
                              "Skip",
                              style: TextStyle(
                                  color: dark,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            )),
                        TextButton(
                            onPressed: () {
                              _controller.nextPage(
                                  duration: const Duration(microseconds: 500),
                                  curve: Curves.bounceIn);
                            },
                            child: const Text(
                              "Next",
                              style: TextStyle(
                                  color: dark,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ))
                      ]),
          );
        },
      ),
    );
  }
}

class SimpleUiWidget extends StatelessWidget {
  final Color bg;
  final String img;
  final String title;
  const SimpleUiWidget({
    Key? key,
    required this.img,
    required this.title,
    required this.bg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: bg),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 60),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                shadowColor: dark,
                elevation: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    img,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                  color: pureWhite, fontSize: 46, fontWeight: FontWeight.bold),
            )
          ]),
    );
  }
}
