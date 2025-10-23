import 'package:app_task/feature/cart/prensenrarion/view/widgets/custom_cart_item.dart';
import 'package:flutter/material.dart';
import '../../../data/models/cart_model.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key, required this.cartList});
  final List<CartModel> cartList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: cartList.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: CustomCartItem(item: cartList[index], index: index),
      ),
    );
  }
}
