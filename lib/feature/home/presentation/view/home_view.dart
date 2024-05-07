import 'package:fason_app/core/utils/app_images.dart';
import 'package:fason_app/feature/home/presentation/manger/latest_cubit/latest_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../constants.dart';
import '../../../cart/prensenrarion/view/cart_view.dart';
import '../../../favorite/presentation/view/favorite_view.dart';
import '../../../profile/presentation/view/profile_view.dart';
import '../../../search/presentation/view/search_view.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List screens = const [
    HomeViewBody(),
    SearchView(),
    CartView(),
    FavoriteView(),
    ProfileView(),
  ];

  @override
  void initState() {
    BlocProvider.of<LatestCubit>(context).getLatest();
    super.initState();
  }

  final items = [
    NavigationDestination(
      icon: SvgPicture.asset(Assets.imagesHome),
      label: '',
    ),
    NavigationDestination(
      icon: SvgPicture.asset(Assets.imagesSearch),
      label: '',
    ),
    NavigationDestination(
      icon: SvgPicture.asset(Assets.imagesCart),
      label: '',
    ),
    NavigationDestination(
      icon: SvgPicture.asset(Assets.imagesHeart),
      label: '',
    ),
    NavigationDestination(
      icon: SvgPicture.asset(Assets.imagesUser),
      label: '',
    ),
  ];
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: kPrimaryColor,
      bottomNavigationBar: NavigationBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: items,
      ),
      body: screens[currentPageIndex],
    ));
  }
}
