import 'package:flutter/material.dart';
import 'package:resume_builder/utils/allcolor.dart';
import 'package:resume_builder/utils/textstyling.dart';

class Customwidget {
  static AppBar getAppBar(
      {required BuildContext context,
      required String title,
      required Widget child}) {
    return AppBar(
      backgroundColor: primarylightgreencolor,
      leading: Container(),
      title: Text(
        title,
        style: Textstyling.title,
      ),
      bottom: AppBar(
        leading: Container(),
        title: child,
        backgroundColor: primarylightgreencolor,
      ),
      centerTitle: true,
    );
  }
}
