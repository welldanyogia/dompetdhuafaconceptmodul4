import 'package:flutter/material.dart';

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 192,
      height: 72,
      // padding: const EdgeInsets.fromLTRB(20, 79, 20, 79),
      margin: const EdgeInsets.only(left: 20, top: 79),
      child: const Text(
        'Masuk Akun\nDompet Dhuafa',
        style: TextStyle(
            fontFamily: 'Lexend', fontSize: 24, fontWeight: FontWeight.w600),
      ),
    );
  }
}
