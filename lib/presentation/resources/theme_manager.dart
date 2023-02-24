import 'package:flutter/material.dart';

import 'colour_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    backgroundColor: AppColor.light,
    primaryColor: AppColor.primary,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),
  );
}
