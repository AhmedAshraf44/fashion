import 'package:app_task/feature/home/presentation/manger/category_cubit/category_cubit.dart'
    show CategoryCubit;
import 'package:app_task/feature/home/presentation/view/widgets/custom_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/all_product_model/all_product_model.dart';
import '../../manger/category_cubit/category_state.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        if (state is CategoryFailure) {
          return Center(child: Text(state.errMessage));
        } else if (state is CategorySuccess) {
          return CategoryGridView(product: state.product);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({super.key, required this.product});
  final List<AllProductModel> product;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        mainAxisExtent: MediaQuery.of(context).size.height * .32,
      ),
      itemCount: product.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: CustomItem(product: product[index]),
        );
      },
    );
  }
}
