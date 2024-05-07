import 'package:flutter/material.dart';

import '../../constants.dart';
import '../utils/app_style.dart';

AppBar buildCustomAppBar({required String title}) {
    return AppBar(
      titleSpacing: 0,
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        icon:const Icon(Icons.arrow_back_ios_rounded,size: 20,),
        onPressed: () {
          // Navigator.pop(context);
        },
      ),
      title: Text(title,style: AppStyle.styleMedium14,),
    );
}