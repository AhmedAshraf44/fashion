import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_style.dart';
import '../../view_model/profile_view_model.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});
  static ProfileViewModel item = ProfileViewModel();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: item.item.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 3),
            child: Card(
              color: kViolateColor,
              child: ListTile(
                leading: SvgPicture.asset(item.item[index].image),
                title: Text(
                  item.item[index].title,
                  style: AppStyle.styleMedium14,
                ),
                trailing: SvgPicture.asset(Assets.imagesChevronDown),
              ),
            ),
          );
        },
      ),
    );
  }
}
