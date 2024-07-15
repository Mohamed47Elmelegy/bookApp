import 'package:flutter/material.dart';

import '../../main.dart';

class Constants {
  static var mediaQuery = MediaQuery.sizeOf(
    navigatorKey.currentState!.context,
  );
  static var theme = Theme.of(
    navigatorKey.currentState!.context,
  );
  static const featuredBox = 'featured_box';
  static const newestBox = 'newest_box';
}
