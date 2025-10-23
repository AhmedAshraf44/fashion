import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants.dart';
import '../../../../core/function/build_custom_app_bar.dart';
import '../../../../core/utils/app_style.dart';
import '../manger/cart_cubit/cart_cubit.dart';
import '../manger/cart_cubit/cart_state.dart';
import 'widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(title: 'Cart'),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          if (state is CartInitial) {
            return Center(
              child: Text(
                'Empty Cart',
                style: AppStyle.styleMedium16.copyWith(color: kBorderColor),
              ),
            );
          }
          if (state is CartUpdated) {
            return CartViewBody(cartList: state.cartList);
          }
          return Container();
        },
      ),
    );
  }
}
