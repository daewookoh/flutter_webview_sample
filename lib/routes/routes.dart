import 'package:flutter_webview_sample/pages/index.dart';
import 'package:get/get.dart';

import 'links.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: AppLinks.HOME,
      page: () => Home(),
      binding: HomeBinding(),
    ),
  ];
}
