import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppleButtonWidget extends StatelessWidget {
  const AppleButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 371,
      height: 48,
      margin: const EdgeInsets.only(left: 20, top: 643),
      child: OutlinedButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xffffffff),
        ),
        onPressed: () {
          
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svgs/apple.svg',
            ),
            const Text(
              'Masuk Dengan Apple',
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
