import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signin_controller.dart';
import 'widget/another_register_text_widget.dart';
import 'widget/apple_button_widget.dart';
import 'widget/email_input_widget.dart';
import 'widget/email_label_widget.dart';
import 'widget/fb_button_widget.dart';
import 'widget/forgot_password_widget.dart';
import 'widget/google_button_widget.dart';
import 'widget/password_input_widget.dart';
import 'widget/password_label_widget.dart';
import 'widget/register_text_widget.dart';
import 'widget/signin_button_widget.dart';
import 'widget/title_text_widget.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const TitleTextWidget(),
        const EmailLabelWidget(),
        EmailInputWidget(),
        const PasswordLabelWidget(),
        PasswordInputWidget(),
        const ForgotPasswordWidget(),
        SignInButtonWidget(),
        const RegisterTextWidget(),
        const FbButtonWidget(),
        GoogleButtonWidget(),
        const AppleButtonWidget(),
        const AnotherRegisterTextWidget()
      ]),
    );
  }
}
