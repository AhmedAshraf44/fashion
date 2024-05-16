import 'package:fason_app/core/function/build_custom_app_bar.dart';
import 'package:fason_app/feature/home/presentation/view/widgets/category_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manger/category_cubit/category_cubit.dart';
class CategoryView extends StatefulWidget {
  const CategoryView({super.key, required this.title});
 final String title;

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {

  @override
  void initState() {
    BlocProvider.of<CategoryCubit>(context).getCategories(endPoint: widget.title);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(title:widget.title,onPressed: () {
        Navigator.pop(context);
      },),
      body:const CategoryViewBody(),
    );
  }
}