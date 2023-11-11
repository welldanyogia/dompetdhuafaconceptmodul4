
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';

class ImageWidget extends StatelessWidget {
  // final HomeController _con = HomeController();
  final HomeController _controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 400,
      child: Obx(() {
        return _controller.pickedImage.value != null
            ? Image.file(_controller.pickedImage.value!)
            : Image.asset('assets/images/banner.png');
      }),
    );
  }
}
