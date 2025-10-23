import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class CustomPointSlider extends StatelessWidget {
  const CustomPointSlider({
    super.key,
    required this.pageNumber,
    required this.number,
  });

  final int pageNumber;
  final int number;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        number,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: Icon(
            Icons.circle,
            size: 12,
            color:
                pageNumber == index ? kSecondaryColor : const Color(0xffCECCD2),
          ),
        ),
      ),
    );
  }
}
