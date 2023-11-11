import 'package:dompetdhuafaconceptmodul4/app/modules/register/controllers/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpButtonWidget extends StatelessWidget {
  final RegisterController controller = Get.put(RegisterController());
  SignUpButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 371,
      height: 48,
      margin: const EdgeInsets.only(left: 20, top: 401),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xff00A44F),
        ),
        onPressed: () {
          controller.registerUser(controller.emailController.text,
              controller.passwordController.text);
        },
        child: const Text(
          'Daftar',
          style: TextStyle(
              fontFamily: 'Lexend',
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xffffffff)),
        ),
      ),
    );
  }
}
