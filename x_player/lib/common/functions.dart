import 'dart:io';

import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Gap extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final H;
  // ignore: prefer_typing_uninitialized_variables
  final W;
  const Gap({Key? key, double this.H = 0, double this.W = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: H,
      width: W,
    );
  }
}

sizeReduce({required mb}) {
  if (mb <= 1024) {
    return "$mb mb";
  }
  if (mb >= 1024) {
    var multy = mb ~/ 1024;

    return "${mb ~/ 1024}.${multy * mb - 1024} gb";
  }
}

lauchEmail({required toMail}) async {
  await launchUrlString("mailto:shibilhassank2002@gmail.com");
}

shareFile(String file) async {
  final video = File(file);

  await Share.shareFiles([file]);
}
