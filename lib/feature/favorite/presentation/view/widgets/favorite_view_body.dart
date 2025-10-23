import 'package:flutter/material.dart';
import 'custom_favorite_item.dart';
import '../../../data/models/favorite_model.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({super.key, required this.favoriteList});
  final List<FavoriteModel> favoriteList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: favoriteList.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: CustomFavoriteItem(
          item: favoriteList[index],
          index: index,
          
        ),
      ),
    );
  }
}
