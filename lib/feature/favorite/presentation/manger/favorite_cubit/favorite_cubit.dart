import 'package:app_task/feature/favorite/presentation/manger/favorite_cubit/favorite_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../home/data/models/all_product_model/all_product_model.dart';
import '../../../data/models/favorite_model.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitial());
  List<FavoriteModel> favoriteList = [];

  // bool isFavorite =false;
  void addFavorite({required AllProductModel product}) {
    //isFavorite =true;
    favoriteList.add(FavoriteModel(product: product));
    // log('${favoriteList[0].product}');
    // log('lenght addFavorite :${favoriteList.length}');
    emit(FavoriteUpdated(favoriteList: favoriteList));
  }

  void removeFavorite({required int index}) {
    //isFavorite =false;
    favoriteList.removeAt(index);
    if (favoriteList.isEmpty) {
      emit(FavoriteInitial());
    } else {
      // log('lenght removeFavorite :${favoriteList.length}');
      emit(FavoriteUpdated(favoriteList: favoriteList));
    }
  }
}
