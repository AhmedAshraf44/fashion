import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.image,
      required this.backgroundButton,
      required this.textColor, this.onPressed});
  final String title;
  final String image;
  final Color backgroundButton;
  final Color textColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: MediaQuery.of(context).size.width * .45,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundButton,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: kSecondaryColor),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(image),
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: AppStyle.styleMedium16.copyWith(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}