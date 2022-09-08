import 'package:flutter/material.dart';
import 'package:show_opacity_bottomsheet/bottom_sheet.dart';

class AppRouter {
  static final AppRouter _singleton = AppRouter._internal();
  factory AppRouter() {
    return _singleton;
  }
  AppRouter._internal();

  Future<dynamic> showCustomBottomSheet(BuildContext context, Widget body) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return CustomBottomSheet(
          body: body,
        );
      },
    );
  }
}
