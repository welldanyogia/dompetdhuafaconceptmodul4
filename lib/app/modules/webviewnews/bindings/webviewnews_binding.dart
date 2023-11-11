import 'package:get/get.dart';

import '../controllers/webviewnews_controller.dart';

class WebviewnewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WebviewnewsController>(
      () => WebviewnewsController(),
    );
  }
}
