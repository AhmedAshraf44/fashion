import 'package:app_task/constants.dart';
import 'package:app_task/core/utils/service_locator.dart';
import 'package:app_task/feature/cart/data/models/cart_item_model.dart';
import 'package:app_task/feature/cart/prensenrarion/manger/cart_cubit/cart_cubit.dart';
import 'package:app_task/feature/favorite/presentation/manger/favorite_cubit/favorite_cubit.dart';
import 'package:app_task/feature/home/data/repo/home_repo_impl.dart';
import 'package:app_task/feature/home/presentation/manger/latest_cubit/latest_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'core/utils/app_router.dart';
import 'feature/home/presentation/manger/category_cubit/category_cubit.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(CartItemMoelAdapter());
  setupServiceLocator();
  runApp(const FasonApp());
}

class FasonApp extends StatelessWidget {
  const FasonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LatestCubit(getIt.get<HomeRepoImpl>()),
        ),
        BlocProvider(create: (context) => FavoriteCubit()),
        BlocProvider(create: (context) => CartCubit()),
        BlocProvider(
          create: (context) => CategoryCubit(getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
