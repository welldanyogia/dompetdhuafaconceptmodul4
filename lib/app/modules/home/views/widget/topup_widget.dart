import 'package:flutter/material.dart';

class TopupWidget extends StatelessWidget {
  const TopupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 100, top: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: Color(0xff128848)),
      ),
      child: SizedBox(
        height: 36,
        width: 86,
        child: TextButton(
          onPressed: () {},
          child: const Center(
            child: Text(
              'Isi Saldo',
              style: TextStyle(
                fontFamily: 'Lexend',
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xff128848),
              ),
            ),
          ),
        ),
      ),
    );
  }
}