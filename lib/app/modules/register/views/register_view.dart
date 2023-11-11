import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';
import 'widget/another_register_text_widget.dart';
import 'widget/email_input_widget.dart';
import 'widget/email_label_widget.dart';
import 'widget/forgot_password_widget.dart';
import 'widget/password_input_widget.dart';
import 'widget/password_label_widget.dart';
import 'widget/signup_button_widget.dart';
import 'widget/title_text_widget.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(children: [
        const TitleTextWidget(),
        const EmailLabelWidget(),
        EmailInputWidget(),
        const PasswordLabelWidget(),
        PasswordInputWidget(),
        const ForgotPasswordWidget(),
        SignUpButtonWidget(),
        const AnotherRegisterTextWidget()
      ]),
    );
  
  }
}
