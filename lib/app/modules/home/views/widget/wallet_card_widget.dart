import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'topup_widget.dart';
import 'wallet_info_widget.dart';

class WalletCardWidget extends StatelessWidget {
  const WalletCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 200, left: 5),
      color: const Color(0xffFFFFFF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: SizedBox(
        height: 72,
        width: 400,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 23),
              child: SvgPicture.asset('assets/svgs/wallet.svg'),
            ),
            const WalletInfoWidget(),
            const TopupWidget(),
          ],
        ),
      ),
    );
  }
}