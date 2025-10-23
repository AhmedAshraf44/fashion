import 'package:app_task/feature/home/data/models/all_product_model/all_product_model.dart';
import 'package:go_router/go_router.dart';

import '../../feature/cart/prensenrarion/view/cart_view.dart';
import '../../feature/home/presentation/view/category_view.dart';
import '../../feature/home/presentation/view/details_view.dart';
import '../../feature/home/presentation/view/home_view.dart';
import '../../feature/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeview';
  static const kDetailsView = '/detailsView';
  static const kCartView = '/cartView';
  static const kCategoryView = '/categoryView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kDetailsView,
        builder: (context, state) {
          final product = state.extra as AllProductModel;
          return DetailsView(product: product);
        },
      ),
      GoRoute(path: kCartView, builder: (context, state) => const CartView()),
      GoRoute(
        path: kCategoryView,
        builder: (context, state) {
          final title = state.extra as String;
          return CategoryView(title: title);
        },
      ),
    ],
  );
}
