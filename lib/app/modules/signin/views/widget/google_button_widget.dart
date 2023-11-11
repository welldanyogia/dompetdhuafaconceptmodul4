import 'package:dompetdhuafaconceptmodul4/app/modules/signin/views/signin_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/signin_controller.dart';

class GoogleButtonWidget extends StatelessWidget {
  final controller = Get.put(SigninController());
  GoogleButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 371,
      height: 48,
      margin: const EdgeInsets.only(left: 20, top: 580),
      child: OutlinedButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xffffffff),
        ),
        onPressed: () async {
          try {
            // final UserCredential credential =
                await controller.signInWithGoogle();
            // var user = credential.user;
            // if (user != null) {
            //   Get.to(const HomeView());
            // } else {
            //   Get.to(const SigninView());
            // }
          } catch (e) {
            if (e is FirebaseAuthException) {
              Get.to(const SigninView());
            }
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SvgPicture.asset(
            //   'assets/svgs/google.svg',
            // ),
            Image.asset(
              'assets/images/google.png',
              height: 24,
              width: 24,
            ),
            const Text(
              'Masuk Dengan Google',
              style: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff00A44F)),
            ),
          ],
        ),
      ),
    );
  }
}
