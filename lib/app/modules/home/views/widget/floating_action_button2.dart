import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';

class FloatingButton2Widget extends StatelessWidget {
  FloatingButton2Widget({super.key});
  final HomeController _controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 630,right: 20,left: 330),
      child: FloatingActionButton(
        onPressed: (){
          _controller.pickImageGalery();
        },
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add_a_photo),
      ),
    );
  }
}
