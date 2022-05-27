import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/presentation/screen_home/home_screen.dart';
import 'package:x_player/presentation/screen_splash/screen_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // theme: ThemeData(
      //   textTheme: const TextTheme(
      //     //  Titles in the Appbar
      //     titleLarge: TextStyle(),

      //     // Folder Name & Video Name
      //     bodyLarge: TextStyle(),

      //     // smaller texture near folder
      //     bodySmall: TextStyle(),

      //     //
      //   ),

      //   scaffoldBackgroundColor: Color.fromARGB(255, 241, 241, 241),
      //   bottomAppBarColor: Light.darkBlue,
      //   appBarTheme: AppBarTheme(backgroundColor: Light.darkBlue),

      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: darkBlue)),
      // ),

      home: ScreenHome(),
    );
  }
}
