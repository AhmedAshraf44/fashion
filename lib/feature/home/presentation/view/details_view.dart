import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/all_product_model/all_product_model.dart';
import '../manger/counter_cubit/counter_cubit.dart';
import 'widgets/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.product});
  final AllProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => CounterCubit(),
        child: DetailsViewBody(product: product),
      ),
    );
  }
}
