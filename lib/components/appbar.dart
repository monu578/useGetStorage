import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors.dart';
import 'ctext.dart';

PreferredSizeWidget customAppBar({
  String? title,
  String? actiontext,
  double? height,
  List<Widget>? action,
  bool leading = true,
}) {
  const double defaultHeight = kToolbarHeight;

  return PreferredSize(
      preferredSize: Size.fromHeight(height ?? defaultHeight),
      child: AppBar(
        automaticallyImplyLeading: leading,
        iconTheme: const IconThemeData(
            // color: Colors.white,
            ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: ColorSelect.loginGradient,
          ),
        ),
        actions: action,
        centerTitle: true,
        title: title != null
            ? CText(
                text: title,
                // color: Colors.white,
              )
            : null,
      ));
}

PreferredSize cappBar({
  double? height,
  bool leading = true,
}) {
  const double defaultHeight = kToolbarHeight;
  return PreferredSize(
      preferredSize: Size.fromHeight(height ?? defaultHeight),
      child: AppBar(
        automaticallyImplyLeading: leading,
      ));
}
