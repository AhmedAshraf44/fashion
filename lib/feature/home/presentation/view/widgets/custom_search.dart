import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constants.dart';
import '../../../../../core/function/build_border.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_style.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: kViolateColor,
        contentPadding: const EdgeInsets.all(0),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10),
          child: SvgPicture.asset(
            Assets.imagesSearch,
          ),
        ),
        hintText: 'Search here',
        hintStyle: AppStyle.styleMedium12.copyWith(color: kBorderColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }
}
