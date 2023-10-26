import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants/constants.dart';

PreferredSizeWidget getAppBar() {
  return AppBar(
    title: Text(appBarTitle),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    foregroundColor: appBarTextColor,
    elevation: 0,
  );
}
