// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/functions.dart';
import 'package:x_player/presentation/screen_about/screen_about.dart';
import 'package:x_player/presentation/screen_home/home_screen.dart';
import 'package:x_player/presentation/screen_privacy/screen_privacy.dart';
import 'package:x_player/presentation/screen_settings/screen_settings.dart';
import 'package:x_player/test_screen.dart';

class ScreenMenu extends StatelessWidget {
  const ScreenMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: color_dark,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView(
          children: [
            MenuTiles(
              text: "Settings",
              icon: Icons.settings_rounded,
              page: const SettingsScreen(),
              ctx: context,
            ),
            const Divider(
              color: lightBlue,
            ),
            MenuTiles(
              text: "Share App",
              icon: Icons.share_rounded,
              page: const TestScreen(),
              ctx: context,
            ),
            const Divider(
              color: lightBlue,
            ),
            MenuTiles(
              text: "Privacy Policy",
              icon: Icons.privacy_tip,
              page: const PrivacyScreen(),
              ctx: context,
            ),
            const Divider(
              color: lightBlue,
            ),
            MenuTiles(
              text: "About",
              icon: Icons.info_rounded,
              page: const AboutScreen(),
              ctx: context,
            ),
            const Divider(
              color: lightBlue,
            ),
            GestureDetector(
              onTap: () {
                lauchEmail(toMail: "shibilhassank2002@gmail.com");
              },
              child: SizedBox(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.email_rounded,
                        color: pureWhite,
                        size: 22,
                      ),
                      Gap(
                        W: 30,
                      ),
                      Text(
                        "Connect us",
                        style: TextStyle(
                            fontSize: 20,
                            color: pureWhite,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MenuTiles extends StatelessWidget {
  final String text;
  final IconData icon;

  final page;
  final ctx;
  const MenuTiles(
      {Key? key,
      required this.text,
      required this.icon,
      required this.page,
      required BuildContext this.ctx})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        if (text == "Share App") {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const ScreenHome()));
        } else {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => page));
        }
      },
      child: SizedBox(
        height: 40,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Icon(
                icon,
                color: middleBlue,
                size: 22,
              ),
              Gap(W: _width * 0.07),
              Text(
                text,
                style: const TextStyle(
                    fontSize: 20,
                    color: middleBlue,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
