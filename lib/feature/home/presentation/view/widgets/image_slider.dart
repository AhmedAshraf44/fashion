import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_style.dart';
import '../../../data/models/slider_model.dart';
import 'custom_point_slider.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({
    super.key,
    required this.pageNumber,
    required this.sliderModel,
    required this.sliderLength,
  });
  final int pageNumber;
  final SliderModel sliderModel;
  final int sliderLength;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  sliderModel.image,
                ),
                fit: BoxFit.fill),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        child: AspectRatio(
          aspectRatio: 4 / 2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  sliderModel.tittle,
                  style:
                      AppStyle.styleSemiBold24.copyWith(color: kSecondaryColor),
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomPointSlider(
                  pageNumber: pageNumber,
                  number: sliderLength,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
