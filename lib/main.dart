import 'package:flutter/material.dart';
import 'package:flutter_webview_sample/routes/links.dart';
import 'package:flutter_webview_sample/routes/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppLinks.HOME,
      getPages: AppRoutes.pages,
    );
  }
}
