import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:x_player/application/favorites/favorites_bloc.dart';
import 'package:x_player/application/playlist/playlists_bloc.dart';
import 'package:x_player/application/video_info/video_info_bloc.dart';
import 'package:x_player/common/colors.dart';
import 'package:x_player/core/injectable/injectable.dart';
import 'package:x_player/domain/models/favorites/model.dart';
import 'package:x_player/domain/models/last_played/model.dart';
import 'package:x_player/domain/models/playlist/model.dart';
import 'package:x_player/presentation/screen_onboarding/screen_onboarding.dart';

void main() async {
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();

  if (!Hive.isAdapterRegistered(FavoritesModelAdapter().typeId)) {
    Hive.registerAdapter(FavoritesModelAdapter());
  }
  if (!Hive.isAdapterRegistered(PlayListModelAdapter().typeId)) {
    Hive.registerAdapter(PlayListModelAdapter());
  }
  if (!Hive.isAdapterRegistered(LastPlayedModelAdapter().typeId)) {
    Hive.registerAdapter(LastPlayedModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => VideoInfoBloc(),
        ),
        BlocProvider(
          create: (context) => FavoritesBloc(),
        ),
        BlocProvider(
          create: (context) => PlaylistsBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: darkBlue)),
        home: const CheckWidget(),
      ),
    );
  }
}
