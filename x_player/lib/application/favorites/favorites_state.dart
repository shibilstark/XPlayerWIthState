part of 'favorites_bloc.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState(
      {required bool isLoading,
      required List<FavoritesModel> favoritesList}) = _FavoritesState;

  factory FavoritesState.initial() =>
      const FavoritesState(isLoading: false, favoritesList: []);
}
