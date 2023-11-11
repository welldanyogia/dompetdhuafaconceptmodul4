import 'package:flutter/material.dart';

class FbButtonWidget extends StatelessWidget {
  const FbButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 371,
      height: 48,
      margin: const EdgeInsets.only(left: 20, top: 517),
      child: OutlinedButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xffffffff),
        ),
        onPressed: () {
          
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/fb.png',
              height: 24,
              width: 24,
            ),
            const Text(
              'Masuk Dengan Facebook',
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
