import 'package:flutter/material.dart';

class WalletInfoWidget extends StatelessWidget {
  const WalletInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10, left: 20),
          child: const Text(
            'Rp1.000.000',
            style: TextStyle(
              fontFamily: 'Lexend',
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xff000000),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10, top: 30),
          child: const Text(
            'Dompet Donasimu',
            style: TextStyle(
              fontFamily: 'Lexend',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff7E8CA0),
            ),
          ),
        ),
      ],
    );
  }
}