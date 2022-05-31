part of 'favorites_bloc.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.initialize() = Initialize;
  const factory FavoritesEvent.addToFav({required FavoritesModel model}) =
      AddToFav;
  const factory FavoritesEvent.removeFromFav(
      {required FavoritesModel model, required int index}) = removeFromFav;

  const factory FavoritesEvent.getAllFavoriteVideos() = GetAllFavoriteVideos;
  const factory FavoritesEvent.clearAllFavorites() = ClearAllFavorites;
}
