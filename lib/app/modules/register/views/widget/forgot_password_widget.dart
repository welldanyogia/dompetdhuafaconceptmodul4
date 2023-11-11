import 'package:flutter/material.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 136,
      height: 18,
      margin: const EdgeInsets.only(left: 150, top: 359),
      child: const Text(
        'Lupa Password?',
        style: TextStyle(
            color: Color(0xff00A44F),
            fontFamily: 'Lexend',
            fontSize: 14,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
