import 'package:dompetdhuafaconceptmodul4/app/modules/home/views/home_view.dart';
import 'package:dompetdhuafaconceptmodul4/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SigninController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final SharedPreferences _preferences = Get.find<SharedPreferences>();
  RxBool isLoading = false.obs;
  RxBool isLogin = false.obs;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void onInit() {
    super.onInit();
    checkLoginStatus();
  }

  Future<void> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    // Once signed in, return the UserCredential
    await FirebaseAuth.instance.signInWithCredential(credential);
    Get.to(const HomeView());
  }

  Future<void> loginUser(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      Get.snackbar('Success', 'Login successful',
          backgroundColor: Colors.green);
      isLogin.value = true;
      Get.offAllNamed(Routes.HOME);
    } catch (e) {
      Get.snackbar('Failed', 'Login Failed : $e', backgroundColor: Colors.red);
    }
  }

  Future<void> checkLoginStatus() async {
    isLogin.value = _preferences.containsKey('user_token');
  }
}
