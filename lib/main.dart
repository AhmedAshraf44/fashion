import 'package:fason_app/constants.dart';
import 'package:fason_app/core/utils/service_locator.dart';
import 'package:fason_app/feature/cart/prensenrarion/manger/cart_cubit/cart_cubit.dart';
import 'package:fason_app/feature/home/data/repo/home_repo_impl.dart';
import 'package:fason_app/feature/favorite/presentation/manger/favorite_cubit/favorite_cubit.dart';
import 'package:fason_app/feature/home/presentation/manger/latest_cubit/latest_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/app_router.dart';

void main() {
   setupServiceLocator();
  runApp(const FasonApp());
}

class FasonApp extends StatelessWidget {
  const FasonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => LatestCubit(getIt.get<HomeRepoImpl>()),),
      BlocProvider(create: (context) => FavoriteCubit(),),
      BlocProvider(create: (context) => CartCubit(),)
    ],
          child: MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
          ),
        );
      }
  }

