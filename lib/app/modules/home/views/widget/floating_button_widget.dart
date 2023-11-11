import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';

class FloatingButtonWidget extends StatelessWidget {
  FloatingButtonWidget({super.key});
  final HomeController _controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 700,right: 20,left: 330),
      child: FloatingActionButton(
        onPressed: (){
          _controller.pickImage();
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add_a_photo),
      ),
    );
  }
}
