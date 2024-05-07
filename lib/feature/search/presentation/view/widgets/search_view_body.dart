import 'package:flutter/material.dart';

import '../../../../home/presentation/view/widgets/custom_app_bar.dart';
import '../../../../home/presentation/view/widgets/custom_search.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              children: [
              CustomAppBar(),
              SizedBox(
                height: 20,
              ),
              CustomSearch(),
              SizedBox(
                height: 15,
              ),
           ], ),
    );
  }
}