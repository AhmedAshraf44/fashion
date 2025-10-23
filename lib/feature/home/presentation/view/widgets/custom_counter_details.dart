import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_style.dart';
import '../../manger/counter_cubit/counter_cubit.dart';

class CustomCounterDetails extends StatelessWidget {
  const CustomCounterDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(
      builder: (context, state) => Container(
        width: 130,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffEAEAEA),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.remove, color: kBlackColor),
              onPressed: () {
                context.read<CounterCubit>().decrementNumber();
              },
            ),
            Container(
              color: kSecondaryColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                child: Text(
                  '$state',
                  style: AppStyle.styleMedium12.copyWith(color: kBlackColor),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.add, color: kBlackColor),
              onPressed: () {
                context.read<CounterCubit>().incrementNumber();
                // setState(() {
                //   number++;
                // });
              },
            ),
          ],
        ),
      ),
    );
  }
}
