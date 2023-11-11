import 'package:dompetdhuafaconceptmodul4/app/modules/signin/controllers/signin_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignInButtonWidget extends StatelessWidget {
  final SigninController controller = Get.put(SigninController());
  SignInButtonWidget({
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
          controller.loginUser(controller.emailController.text,
              controller.passwordController.text);
        },
        child: const Text(
          'Masuk',
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
