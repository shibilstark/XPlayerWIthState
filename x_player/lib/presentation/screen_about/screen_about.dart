import 'package:flutter/material.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/common/functions.dart';
import 'package:x_player/presentation/screen_privacy/screen_privacy.dart';
import 'package:x_player/presentation/screen_settings/screen_settings.dart';
import 'package:x_player/presentation/widgets.dart';

const aboutStyle = TextStyle(color: darkBlue, fontWeight: FontWeight.w500);

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: color_dark,
      body: AboutBody(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: CommonAppBar(title: "About"),
      ),
    );
  }
}

class AboutBody extends StatelessWidget {
  const AboutBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            // height: 100,
            decoration: BoxDecoration(
                color: pureWhite, borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: darkBlue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/img/main_logo_adjusted.png",
                      width: size.width * 0.3,
                    ),
                  ),
                ),
                const Gap(
                  W: 20,
                ),
                const Text(
                  "X Player",
                  style: TextStyle(
                      color: darkBlue,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          const Gap(
            H: 20,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration:
                const BoxDecoration(color: Color.fromARGB(69, 176, 200, 240)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              smallTexture(context, "Version"),
              const Gap(
                H: 5,
              ),
              const Text(
                "v2.0.0",
                style: aboutStyle,
              ),
              const Gap(
                H: 20,
              ),
              smallTexture(context, "Privacy"),
              const Gap(
                H: 5,
              ),
              InkWell(
                child: const Text(
                  "By using X Player, you agree to X Player's Privacy Policy",
                  style: TextStyle(
                      color: Colors.blueAccent, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => const PrivacyScreen()));
                },
              ),
              const Gap(
                H: 20,
              ),
              smallTexture(context, "Support"),
              const Gap(
                H: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Please inform  bug reports, comments throgh ",
                    style: aboutStyle,
                  ),
                  const Gap(
                    H: 5,
                  ),
                  InkWell(
                    child: const Text(
                      "Contact Us",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w500),
                    ),
                    onTap: () {
                      lauchEmail(toMail: "shibilhassank2002@gmail.com");
                    },
                  ),
                ],
              ),
            ]),
          ),
          const Gap(
            H: 20,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration:
                const BoxDecoration(color: Color.fromARGB(69, 176, 200, 240)),
            child: InkWell(
              child: const Text(
                "Licences",
                style: TextStyle(
                    color: Colors.blueAccent, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                showLicensePage(context: context);
              },
            ),
          )
        ],
      ),
    );
  }
}
