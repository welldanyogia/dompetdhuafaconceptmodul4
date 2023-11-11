import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';
import 'package:get/get.dart';

import '../controllers/webviewnews_controller.dart';

class WebviewnewsView extends GetView<WebviewnewsController> {
  final String url;
  const WebviewnewsView({Key? key, required this.url}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final WebViewController controller = WebViewController()
      ..loadRequest(
        Uri.parse(url),
      );
    return Scaffold(
      body: SafeArea(
        child: WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }
}
