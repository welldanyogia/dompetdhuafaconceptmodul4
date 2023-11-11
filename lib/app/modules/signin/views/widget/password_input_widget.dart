import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/signin_controller.dart';

class PasswordInputWidget extends StatelessWidget {
  final SigninController controller = Get.put(SigninController());
  PasswordInputWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 335,
      height: 48,
      margin: const EdgeInsets.only(left: 20, top: 287, right: 20),
      child: TextField(
        controller: controller.passwordController,
          obscureText: true,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Type Your Password',
              hintStyle: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff7E8CA0)))),
    );
  }
}
