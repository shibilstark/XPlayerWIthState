// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:x_player/domain/models/favorites/model.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';
part 'favorites_bloc.freezed.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc() : super(FavoritesState.initial()) {
    on<GetAllFavoriteVideos>((event, emit) async {
      emit(const FavoritesState(isLoading: true, favoritesList: []));
      final _FavDB = await Hive.openBox<FavoritesModel>("_FavDB");

      emit(FavoritesState(
          isLoading: false, favoritesList: _FavDB.values.toList()));
    });
    on<AddToFav>((event, emit) async {
      // emit(const FavoritesState(isLoading: true, favoritesList: []));
      final _FavDB = await Hive.openBox<FavoritesModel>("_FavDB");

      await _FavDB.add(event.model);

      emit(FavoritesState(
          isLoading: false, favoritesList: _FavDB.values.toList()));
    });
    on<removeFromFav>((event, emit) async {
      // emit(const FavoritesState(isLoading: true, favoritesList: []));
      final _FavDB = await Hive.openBox<FavoritesModel>("_FavDB");

      await _FavDB.deleteAt(event.index);

      emit(FavoritesState(
          isLoading: false, favoritesList: _FavDB.values.toList()));
    });

    on<ClearAllFavorites>((event, emit) async {
      // emit(const FavoritesState(isLoading: true, favoritesList: []));
      final _FavDB = await Hive.openBox<FavoritesModel>("_FavDB");

      await _FavDB.clear();

      emit(FavoritesState(
          isLoading: false, favoritesList: _FavDB.values.toList()));
    });
  }
}
