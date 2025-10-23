import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_style.dart';

class CustomDetailsProduct extends StatelessWidget {
  const CustomDetailsProduct({
    super.key,
    required this.product, required this.title
  });
   final String title;
    final String product; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: kViolateColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                 title,
                style: AppStyle.styleMedium14,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                product,
                style: TextStyle(
                  color: const Color(0xffFFFFFF).withOpacity(.5),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}