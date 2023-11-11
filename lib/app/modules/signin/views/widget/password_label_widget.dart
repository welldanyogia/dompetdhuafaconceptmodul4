import 'package:flutter/material.dart';

class PasswordLabelWidget extends StatelessWidget {
  const PasswordLabelWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 34,
      height: 15,
      margin: const EdgeInsets.only(left: 20, top: 263),
      child: const Text(
        'Password',
        style: TextStyle(
            fontFamily: 'Lexend',
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xff2B3453)),
      ),
    );
  }
}
