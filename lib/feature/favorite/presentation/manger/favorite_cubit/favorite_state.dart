

import '../../../data/models/favorite_model.dart';

abstract class FavoriteState {
  const FavoriteState();
}

final class FavoriteInitial extends FavoriteState {
}

final class FavoriteUpdated extends FavoriteState {
  final List <FavoriteModel> favoriteList;
const FavoriteUpdated({required this.favoriteList});
}