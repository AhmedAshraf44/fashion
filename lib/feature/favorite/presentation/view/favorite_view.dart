import 'package:fason_app/constants.dart';
import 'package:fason_app/core/utils/app_style.dart';
import 'package:fason_app/feature/favorite/presentation/manger/favorite_cubit/favorite_cubit.dart';
import 'package:fason_app/feature/favorite/presentation/manger/favorite_cubit/favorite_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/function/build_custom_app_bar.dart';
import 'widgets/favorite_view_body.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildCustomAppBar(title: 'Wishlist'),
      body: BlocBuilder<FavoriteCubit,FavoriteState>(builder: (context, state) {
        if (state is FavoriteInitial)
        {
          return  Center(child:Text('Empty wishlist',style: AppStyle.styleMedium16.copyWith(color: kBorderColor),),);
        } if (state is FavoriteUpdated)
        {
          return FavoriteViewBody(favoriteList: state.favoriteList,);
        } 
        return Container();
      },),
      
      
    );
  }
}
