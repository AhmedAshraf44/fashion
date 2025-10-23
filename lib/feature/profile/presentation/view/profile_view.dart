import 'package:flutter/material.dart';
import '../../../../constants.dart';
import '../../../../core/function/build_custom_app_bar.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_style.dart';
import 'widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(title: 'User profile'),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('My Profile', style: AppStyle.styleMedium20),
              ),
              const SizedBox(height: 12),
              ListTile(
                // contentPadding: EdgeInsets.,
                leading: CircleAvatar(
                  backgroundColor: kSecondaryColor,
                  radius: 25,
                  child: Image.asset(Assets.imagesProfile),
                ),
                title: const Text(
                  'Samuel Bishop',
                  style: AppStyle.styleMedium18,
                ),
                subtitle: Text(
                  'example@gmail.com',
                  style: AppStyle.styleMedium14.copyWith(color: kBorderColor),
                ),
              ),
              const SizedBox(height: 30),
              const ProfileViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}
