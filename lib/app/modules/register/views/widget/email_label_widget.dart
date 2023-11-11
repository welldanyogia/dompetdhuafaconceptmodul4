import 'package:flutter/material.dart';

class EmailLabelWidget extends StatelessWidget {
  const EmailLabelWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34,
      height: 15,
      margin: const EdgeInsets.only(left: 20, top: 175),
      child: const Text(
        'Email',
        style: TextStyle(
            fontFamily: 'Lexend',
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xff2B3453)),
      ),
    );
  }
}
