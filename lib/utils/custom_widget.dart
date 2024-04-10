import 'package:flutter/material.dart';
import 'package:resume_builder/utils/allcolor.dart';

class Customwidget {
  static AppBar getAppBar(
      {required BuildContext context,
      required String title,
      required String subtitle}) {
    return AppBar(
      backgroundColor: primarypichcolor,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black),
      ),
      bottom: AppBar(
          backgroundColor: primarypichcolor,
          centerTitle: true,
          title: Text(
            subtitle,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
          )),
    );
  }
}
