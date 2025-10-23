import 'package:app_task/core/utils/app_router.dart';
import 'package:app_task/feature/home/presentation/view_model/slider_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_style.dart';
import '../../../data/models/slider_model.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  static SliderViewModel categoryList = SliderViewModel();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .23,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: categoryList.categoryList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
            child: CategoryItem(categoryitem: categoryList.categoryList[index]),
          );
        },
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryitem});
  final SliderModel categoryitem;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(
          context,
        ).push(AppRouter.kCategoryView, extra: categoryitem.tittle);
      },
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .16,
            width: MediaQuery.of(context).size.width * .25,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset(categoryitem.image),
            ),
          ),
          const SizedBox(height: 5),
          Text(categoryitem.tittle, style: AppStyle.styleMedium12),
        ],
      ),
    );
  }
}
