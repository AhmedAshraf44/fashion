import 'dart:async';
import 'package:app_task/feature/home/presentation/view/widgets/image_slider.dart';
import 'package:flutter/material.dart';

import '../../view_model/slider_view_model.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  SliderViewModel sliderListItem = SliderViewModel();
  late final PageController pageController;
  Timer? carouselTimer;
  int pageNumber = 0;
  getTimer() {
    return Timer.periodic(const Duration(seconds: 3), (timer) {
      // pageNumber == 4
      if (pageNumber > sliderListItem.sliderList.length - 1) {
        pageNumber = 0;
      }
      if (pageController.hasClients) {
        pageController.animateToPage(
          pageNumber,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOutCirc,
        );
        pageNumber++;
      }
    });
  }

  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: .98);
    carouselTimer = getTimer();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 240,
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            onPageChanged: (index) {
              pageNumber = index;
              setState(() {});
            },
            controller: pageController,
            itemCount: sliderListItem.sliderList.length,
            itemBuilder: (context, index) {
              return AnimatedBuilder(
                animation: pageController,
                builder: (context, child) {
                  return ImageSlider(
                    pageNumber: pageNumber,
                    sliderModel: sliderListItem.sliderList[index],
                    sliderLength: sliderListItem.sliderList.length,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: GestureDetector(
                    onPanDown: (d) {
                      carouselTimer?.cancel();
                      carouselTimer = null;
                    },
                    onPanCancel: () {
                      carouselTimer = getTimer();
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
