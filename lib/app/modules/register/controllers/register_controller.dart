import 'package:dompetdhuafaconceptmodul4/app/modules/signin/views/signin_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  RxBool isLoading = false.obs;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();



  Future<void> registerUser(String email, String password) async {
    try {
      isLoading.value = true;
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Get.snackbar('Success', 'Registration Successfull',
          backgroundColor: Colors.green);
      Get.off(const SigninView());
    } catch (e) {
      Get.snackbar('Error', 'Registration Failed : $e',
      backgroundColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }
}
