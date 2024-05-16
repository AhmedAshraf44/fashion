import 'package:flutter/material.dart';
import 'custom_item.dart';
import '../../../data/models/all_product_model/all_product_model.dart';

class LatestSliverGrid extends StatelessWidget {
  const LatestSliverGrid({super.key, required this.product});
  final List<AllProductModel> product;
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        mainAxisExtent: MediaQuery.of(context).size.height * .32,
      ),
      delegate: SliverChildBuilderDelegate(
        childCount: product.length,
        (context, index) => Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: CustomItem(
            product: product[index],
          ),
        ),
      ),
    );
  }
}

