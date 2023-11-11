import 'package:dompetdhuafaconceptmodul4/app/modules/signin/controllers/signin_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailInputWidget extends StatelessWidget {
  final SigninController controller = Get.put(SigninController());
  EmailInputWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 335,
      height: 48,
      margin: const EdgeInsets.only(left: 20, top: 199, right: 20),
      child:  TextField(
        controller: controller.emailController,
          decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Type Your Email',
        hintStyle: TextStyle(
            fontFamily: 'Lexend',
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xff7E8CA0)),
      )),
    );
  }
}
