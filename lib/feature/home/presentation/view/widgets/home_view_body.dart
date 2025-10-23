import 'package:app_task/feature/home/presentation/view/widgets/category_list_view.dart';
import 'package:app_task/feature/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:app_task/feature/home/presentation/view/widgets/custom_search.dart';
import 'package:app_task/feature/home/presentation/view/widgets/custom_slider.dart';
import 'package:app_task/feature/home/presentation/view/widgets/latest_sliver_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_style.dart';
import '../../manger/latest_cubit/latest_cubit.dart';
import '../../manger/latest_cubit/latest_state.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              children: [
                CustomAppBar(),
                SizedBox(height: 20),
                CustomSearch(),
                SizedBox(height: 15),
                CustomSlider(),
                SizedBox(height: 30),
                CategoryListView(),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Latest', style: AppStyle.styleMedium20),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'View all',
                    style: AppStyle.styleMedium12.copyWith(color: kBorderColor),
                  ),
                ),
              ],
            ),
          ),
        ),

        BlocBuilder<LatestCubit, LatestState>(
          builder: (context, state) {
            if (state is LatestFailure) {
              return SliverToBoxAdapter(
                child: Center(child: Text(state.errMessage)),
              );
            } else if (state is LatestSuccess) {
              return LatestSliverGrid(product: state.product);
            } else {
              return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()),
              );
            }
          },
        ),
      ],
    );
  }
}
