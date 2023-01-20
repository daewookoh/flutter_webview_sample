import 'package:flutter/material.dart';
import 'package:flutter_webview_sample/pages/home/home_controller.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}

class Home extends GetView<HomeController> {
  final WebViewController webViewController = WebViewController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: WebViewWidget(
                controller: webViewController
                  ..setJavaScriptMode(JavaScriptMode.unrestricted)
                  ..loadRequest(Uri.parse('https://google.com'))
                  ..setUserAgent("random")
                  ..setNavigationDelegate(
                    NavigationDelegate(
                      onProgress: (int progress) {},
                      onPageStarted: (String url) {},
                      onPageFinished: (String url) {},
                      onWebResourceError: (WebResourceError error) {},
                      onNavigationRequest: (NavigationRequest request) {
                        if (request.url
                            .startsWith('https://www.youtube.com/')) {
                          return NavigationDecision.prevent;
                        }
                        return NavigationDecision.navigate;
                      },
                    ),
                  ))));
  }
}
